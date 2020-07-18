dt <- read.csv("tab/1000.csv", header = T)
par(family= "HiraKakuProN-W3", 
    mar = c(5.1, 5.1, 4.1, 2.1))
plot(dt$`日`, dt$S, type = "l", cex.lab=1.75,
     lty = 1,  xlab="時間（日数）", cex.axis = 1.5,
     ylab="人数", bty = "n",
     ylim =c(0, 1100), lwd = 4, col = "red")
lines(dt$`日`, dt$R, type = "l", lty = 2, lwd = 4 , col = "blue")
lines(dt$`日`, dt$I, type = "l", lty = 3, lwd = 4, col = "darkgreen")
text(20, 860, "既感染者数 R = 794", cex = 1.4, col = "blue")
text(20, 260, "未感染者数 S = 206", cex = 1.4, col = "red")
text(21, 70, "感染者数 I_max = 144", cex = 1.4, col = "darkgreen")
title("未感染1000人における流行の経時変化", cex.main = 1.8)
