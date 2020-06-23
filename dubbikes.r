install.packages('datetime')
install.packages('ggplot2')
library('ggplot2')
library('datetime')

bikes_df <- read.csv('/Users/jmanderson/Downloads/dublinbikes_20180701_20181001.csv')

bikes_10_df <- bikes_df[0:10,]

datetimes <- as.POSIXct(as.character(bikes_10_df$TIME), format='%Y-%m-%d %H:%M:%S')
bikes_10_df$datetimes <- datetimes

ggplot(aes(x = datetimes, y = AVAILABLE.BIKES), data = bikes_10_df) + geom_point()+
  scale_x_datetime(date_labels = "%H:%M")

