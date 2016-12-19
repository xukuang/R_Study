library(gcookbook)
library(ggplot2)
# 离散型变量
ggplot(uspopage, aes(x=Year, y=Thousands, fill=AgeGroup)) + geom_area()
ggplot(uspopage, aes(x=Year, y=Thousands, fill=AgeGroup)) + geom_area() + scale_fill_brewer()


ggplot(uspopage, aes(x=Year, y=Thousands, fill=AgeGroup)) + geom_area() + scale_fill_brewer(palette="Oranges")

ggplot(heightweight, aes(x=ageYear, y=heightIn, color=sex)) + geom_point() + scale_color_manual(values=c("red", "blue"))
ggplot(heightweight, aes(x=ageYear, y=heightIn, color=sex)) + geom_point() + scale_color_manual(values=c("#CC6666", "#7777DD"))

# 如果希望改变图例的颜色顺序，则手动指定每个颜色对应的因子水平即可
ggplot(heightweight, aes(x=ageYear, y=heightIn, color=sex)) + geom_point() + scale_color_manual(values=c(m="#CC6666", f="#7777DD"))

## 连续型变量
library(gcookbook)
p <- ggplot(heightweight, aes(x=ageYear, y=heightIn, color=weightLb)) + geom_point(size=3)
# 默认渐变
p
# 双色渐变
p + scale_color_gradient(low="black", high="white")
# 渐变色中间用白色划分
library(scales)
p + scale_color_gradient2(low=muted("red"), mid="white", high=muted("blue"), midpoint=110)
# 多色渐变
p + scale_color_gradientn(colors=c("darkred", "orange", "yellow", "white"))