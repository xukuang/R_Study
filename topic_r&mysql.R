library(RMySQL)
seedling = read.csv('data/seed_inf.csv', fileEncoding = 'UTF-8')
head(seedling)
tail(seedling)

conn <- dbConnect(RMySQL::MySQL(), username="root", password= 'iae', host="localhost", port=3306, dbname = 'study')

# MySQL����ʵ����Ϣ
summary(conn, verbose = TRUE)

# ��������������
dbWriteTable(conn,"seedling", seedling, overwrite = T)
# ����������
dbWriteTable(conn, "seedling", seedling, append=TRUE)

# �鿴���ݿ�ı�
dbListTables(conn)

# ɾ����
# ��������������
dbWriteTable(conn,"temp", seedling, overwrite = T)
# �鿴���ݿ�ı�
dbListTables(conn)
dbRemoveTable(conn, "temp")
dbListTables(conn)



# �鿴�����ֶ�
dbListFields(conn, "seedling")


dbSendQuery(conn,'SET NAMES gbk')



mysql=dbGetQuery(conn,"select * from seedling")
head(mysql)

seedling0 <- dbGetQuery(conn, "SELECT * FROM seedling where seed > 0")
head(seedling0)

# ���м�¼������
#dbSendQuery(conn,"INSERT INTO t_blog(title,author,length) values('R�����������','Conan',50)")

## �ر�����
dbDisconnect(conn)


