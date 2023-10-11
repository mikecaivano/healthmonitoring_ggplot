install.packages("tidyverse")

library(tidyverse)

pt4..BUN %>%
  ggplot(aes(Collection.Date, Value))+
  geom_point(color="blue")+
  geom_ribbon(aes(ymin = 0, ymax = 6))+
  scale_y_continuous(limits = c(0,25), expand = c(0, 0))+
  geom_rect(aes(xmin = -Inf, xmax = Inf, ymin = 20.6, ymax = Inf), 
            fill = "pink", alpha = .15)+
  geom_rect(aes(xmin = -Inf, xmax = Inf, ymin = -Inf, ymax = 8.9),
            fill = "pink", alpha = .15)+
  geom_rect(aes(xmin = -Inf, xmax = Inf, ymin = 8.9, ymax = 20.6), fill = "green", alpha = .03)+
  geom_hline(yintercept=14.6, linetype = 2, size = .75)+
  geom_hline(yintercept=17.4, linetype = 2, size = .75)+
  geom_hline(yintercept=20.6, linetype = 1, size = .75)+
  geom_hline(yintercept=8.9, linetype = 1, size = .75)+
  labs(title = "Sample ID 4 BUN", y = "BUN mg/dL", x = "Collection Date",)+
  theme(plot.title = element_text(hjust = .5))

pt4..BUN$Collection.Date <- as.character(pt4..BUN$Collection.Date)

pt4..BUN$Collection.Date <- factor(pt4..BUN$Collection.Date, levels = unique(pt4..BUN$Collection.Date))

#Another example that can be used
pt5bun %>%
  ggplot(aes(Collection.Date, Value))+
  geom_point(color="blue")+
  geom_ribbon(aes(ymin = 0, ymax = 6))+
  scale_y_continuous(limits = c(0,25), expand = c(0, 0))+
  geom_rect(aes(xmin = -Inf, xmax = Inf, ymin = 20.6, ymax = Inf), 
            fill = "pink", alpha = .15)+
  geom_rect(aes(xmin = -Inf, xmax = Inf, ymin = -Inf, ymax = 8.9),
            fill = "pink", alpha = .15)+
  geom_rect(aes(xmin = -Inf, xmax = Inf, ymin = 8.9, ymax = 20.6), fill = "green", alpha = .03)+
  geom_hline(yintercept=10.3, linetype = 2, size = .75)+
  geom_hline(yintercept=18.3, linetype = 2, size = .75)+
  geom_hline(yintercept=20.6, linetype = 1, size = .75)+
  geom_hline(yintercept=8.9, linetype = 1, size = .75)+
  labs(title = "Sample ID 5 BUN", y = "BUN mg/dL", x = "Collection Date",)+
  theme(plot.title = element_text(hjust = .5))

pt5bun$Collection.Date <- as.character(pt5bun$Collection.Date)

pt5bun$Collection.Date <- factor(pt5bun$Collection.Date, levels = unique(pt5bun$Collection.Date))


