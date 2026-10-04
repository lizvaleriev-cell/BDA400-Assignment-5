# BDA400 Assignment 5 - Test File
# Run this file from the same folder as the nine indicator scripts.

source("sma.R")
source("ema.R")
source("macd.R")
source("stdev.R")
source("linreg.R")
source("rsi.R")
source("stoch_rsi.R")
source("crossover.R")
source("crossunder.R")

cat("=== BDA400 Assignment 5 Tests ===\n\n")

data1 <- c(10,12,15,20,18,22,25,24,21)
cat("SMA:\n"); print(sma(data1,3))
cat("\nEMA:\n"); print(ema(data1,3))
cat("\nMACD:\n"); print(macd(c(100,105,110,115,120,125,130),3,5,2))
cat("\nSTDEV:\n"); print(stdev(data1))
cat("\nLINREG:\n"); print(linreg(data1,5,0))

data2 <- c(45,50,48,55,52,49,58,60,65,62,64,68,70,69,72,75,73,77,80,78,82,84,81,86,88,87,90,92,91,94)
cat("\nRSI:\n"); print(rsi(data2,5))
cat("\nSTOCH RSI:\n"); print(stoch_rsi(data2,5,3,3))

arr1 <- c(10,12,15,20,18,22,25,24,21)
arr2 <- c(18,20,22,18,15,12,10,11,13)
cat("\nCROSSOVER:\n"); print(crossover(arr1,arr2))
cat("\nCROSSUNDER:\n"); print(crossunder(arr1,arr2))

cat("\n=== ALL TESTS COMPLETED ===\n")
