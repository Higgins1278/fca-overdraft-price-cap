overdraft <- read.csv("data/overdraft_raw.csv")
credit_card <- read.csv("data/credit_card_raw.csv")

colnames(overdraft) <- c("date", "rate")
colnames(credit_card) <- c("date", "rate")

overdraft$group <- "treatment"
credit_card$group <- "control"

df <- rbind(overdraft, credit_card)

df$date <- as.Date(df$date, format = "%d %b %Y")

df$post <- ifelse(df$date >= as.Date("2020-04-01"), 1, 0)
df$treated <- ifelse(df$group == "treatment", 1, 0)

write.csv(df, "data/panel_clean.csv", row.names = FALSE)