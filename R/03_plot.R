library(ggplot2)

df <- read.csv("data/panel_clean.csv")
df$date <- as.Date(df$date)

ggplot(df, aes(x = date, y = rate, color = group)) +
  geom_line() +
  geom_vline(xintercept = as.Date("2020-04-01"), linetype = "dashed") +
  labs(title = "Overdraft vs credit card rates before/after FCA cap")

ggsave("output/trend_plot.png", width = 8, height = 5)


