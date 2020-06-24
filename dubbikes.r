install.packages('datetime')
install.packages('ggplot2')
library('ggplot2')
library('datetime')

bikes_df <- read.csv('/Users/jmanderson/Downloads/dublinbikes_20180701_20181001.csv')
str(bikes_10_df)

bikes_10_df <- bikes_df[0:2000,]

datetimes <- as.POSIXct(as.character(bikes_10_df$TIME), format='%d/%m/%Y %H:%M')

bikes_10_df$datetimes <- datetimes

ggplot(aes(x = datetimes, y =AVAILABLE.BIKES, colour=ADDRESS), data = bikes_10_df) + geom_point() +
  scale_x_datetime(date_labels = "%H:%M") + guides(colour=FALSE) + geom_line(aes(group = ADDRESS))





