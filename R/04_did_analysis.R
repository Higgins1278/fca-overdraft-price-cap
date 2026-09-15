df <- read.csv("data/panel_clean.csv")

model <- lm(rate ~ post * treated, data = df)
summary(model)

capture.output(summary(model), file = "output/did_results.txt")
