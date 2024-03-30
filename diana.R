# First, create a data frame with the given data
data <- data.frame(
  Univ = c("Brown", "CalTech", "CMU", "Columbia", "Cornell", "Dartmouth", "Duke", "Georgetown", "Harvard", "JohnsHopkins", "MIT", "Northwestern", "NotreDame", "PennState", "Princeton", "Purdue", "Stanford", "TexasA&M", "UCBerkeley", "UChicago", "UMichigan", "UPenn", "UVA", "UWisconsin", "Yale"),
  SAT = c(1310, 1415, 1260, 1310, 1280, 1340, 1315, 1255, 1400, 1305, 1380, 1260, 1255, 1081, 1375, 1005, 1360, 1075, 1240, 1290, 1180, 1285, 1225, 1085, 1375),
  Top10 = c(89, 100, 62, 76, 83, 89, 90, 74, 91, 75, 94, 85, 81, 38, 91, 28, 90, 49, 95, 75, 65, 80, 77, 40, 95),
  Accept = c(22, 25, 59, 24, 33, 23, 30, 24, 14, 44, 30, 39, 42, 54, 14, 90, 20, 67, 40, 50, 68, 36, 44, 69, 19),
  SFRatio = c(13, 6, 9, 12, 13, 10, 12, 12, 11, 7, 10, 11, 13, 18, 8, 19, 12, 25, 17, 13, 16, 11, 14, 15, 11),
  Expenses = c(22704, 63575, 25026, 31510, 21864, 32162, 31585, 20126, 39525, 58691, 34870, 28052, 15122, 10185, 30220, 9066, 36450, 8704, 15140, 38380, 15470, 27553, 13349, 11857, 43514),
  GradRate = c(94, 81, 72, 88, 90, 95, 95, 92, 97, 87, 91, 89, 94, 80, 95, 69, 93, 67, 78, 87, 85, 90, 92, 71, 96)
)

# Perform DIANA clustering
library(cluster)
diana_result <- diana(data[, 2:7])  

# Plot the clusters
plot(diana_result, main = "DIANA Clustering of Universities")
