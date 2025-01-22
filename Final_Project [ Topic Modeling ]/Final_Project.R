library(rvest)
library(dplyr)
library(tm)
library(topicmodels)
library(ggplot2)
library(tidytext)
library(reshape2)


book_review_url <- "https://www.goodreads.com/book/show/6953508-some-we-love-some-we-hate-some-we-eat"
book_webpage <- read_html(book_review_url)



book_reviews <- book_webpage %>%
  html_elements("#ReviewsSection .Formatted") %>%
  html_text()



book_reviews_df <- data.frame(reviews = book_reviews, stringsAsFactors = FALSE)
book_reviews_df



book_corpus <- Corpus(VectorSource(book_reviews_df$reviews))

book_corpus <- tm_map(book_corpus, content_transformer(tolower))
book_corpus <- tm_map(book_corpus, removePunctuation)
book_corpus <- tm_map(book_corpus, removeNumbers)
book_corpus <- tm_map(book_corpus, removeWords, stopwords("en"))
book_corpus <- tm_map(book_corpus, stripWhitespace)



book_reviews_cleaned_df <- data.frame(updated_book_reviews = sapply(book_corpus, as.character), stringsAsFactors = FALSE)
book_reviews_cleaned_df



write.csv(book_reviews_cleaned_df, "D:/9th Semester (Fall_24-25)/IDS Lab/Project/Final_Project/Final_Term_Project_Dataset.csv", row.names = FALSE)



book_dtm <- DocumentTermMatrix(book_corpus)
book_dtm_matrix <- as.matrix(book_dtm)
print(book_dtm_matrix[1:5, 1:5])



book_tfidf <- weightTfIdf(book_dtm)
book_tfidf_matrix <- as.matrix(book_tfidf)
head(book_tfidf_matrix[1:5, 1:5])



num_topics <- 12

book_lda_model <- LDA(book_dtm, k = num_topics, control = list(seed = 1234))

book_term_probs <- tidy(book_lda_model)

book_term_probs



book_top_terms <- book_term_probs %>%
  group_by(topic) %>%
  arrange(desc(beta)) %>%
  slice_head(n = 10) %>%
  ungroup() %>%
  mutate(term = reorder_within(term, beta, topic))



ggplot(book_top_terms, aes(term, beta, fill = factor(topic))) +
  geom_col(show.legend = FALSE) +
  facet_wrap(~ topic, scales = "free", ncol = 3) +
  coord_flip() +
  scale_x_reordered() +
  labs(title = "Word Probabilities by Topic (Book Reviews)",
       x = "Keywords/Terms",
       y = "Probability (Beta)") +
  theme_minimal() +
  theme(axis.text.y = element_text(size = 8))