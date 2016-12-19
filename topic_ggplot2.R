library(gcookbook)
library(ggplot2)
# ��ɢ�ͱ���
ggplot(uspopage, aes(x=Year, y=Thousands, fill=AgeGroup)) + geom_area()
ggplot(uspopage, aes(x=Year, y=Thousands, fill=AgeGroup)) + geom_area() + scale_fill_brewer()


ggplot(uspopage, aes(x=Year, y=Thousands, fill=AgeGroup)) + geom_area() + scale_fill_brewer(palette="Oranges")

ggplot(heightweight, aes(x=ageYear, y=heightIn, color=sex)) + geom_point() + scale_color_manual(values=c("red", "blue"))
ggplot(heightweight, aes(x=ageYear, y=heightIn, color=sex)) + geom_point() + scale_color_manual(values=c("#CC6666", "#7777DD"))

# ���ϣ���ı�ͼ������ɫ˳�����ֶ�ָ��ÿ����ɫ��Ӧ������ˮƽ����
ggplot(heightweight, aes(x=ageYear, y=heightIn, color=sex)) + geom_point() + scale_color_manual(values=c(m="#CC6666", f="#7777DD"))

## �����ͱ���
library(gcookbook)
p <- ggplot(heightweight, aes(x=ageYear, y=heightIn, color=weightLb)) + geom_point(size=3)
# Ĭ�Ͻ���
p
# ˫ɫ����
p + scale_color_gradient(low="black", high="white")
# ����ɫ�м��ð�ɫ����
library(scales)
p + scale_color_gradient2(low=muted("red"), mid="white", high=muted("blue"), midpoint=110)
# ��ɫ����
p + scale_color_gradientn(colors=c("darkred", "orange", "yellow", "white"))