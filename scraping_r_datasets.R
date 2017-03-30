### scraping the table 

library(rvest)
library(dplyr)
library(xml2)
library(XML)

url <- "https://vincentarelbundock.github.io/Rdatasets/datasets.html"


# SUCCESS!

r_datasets4 <- read_html(url) %>%
  rvest::html_nodes("table") %>%
  .[[2]] %>%
  rvest::html_table()

head(r_datasets4)
str(r_datasets4)

r_datasets4 %>% filter(Rows >= 100)


# trial 1
r_datasets1 <- readHTMLTable(readHTMLTable(url, header=T,stringsAsFactors=F))


# trial 2
r_datasets2 <- read_html(url)
str(r_datasets)
head(r_datasets)

# trial3
r_datasets3 <- url %>%
  read_html() %>%
 # html_nodes(xpath='//*[@id="mw-content-text"]/table[1]') %>%
  rvest::html_table(fill = TRUE)

head(r_datasets3)


