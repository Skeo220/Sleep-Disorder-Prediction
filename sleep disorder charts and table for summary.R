# Sleep disorder
df %>%
  group_by(sleep_disorder) %>%
  summarise(count = n()) %>%
  ggplot(aes(x = sleep_disorder, y = count, fill = sleep_disorder)) +
  geom_bar(stat = "identity") +  
  geom_text(aes(label = count), vjust = -0.5,size=7) + 
  theme(axis.text.y = element_blank(), 
        axis.ticks.y = element_blank(),
        axis.title.y = element_blank(),
        panel.grid.major = element_blank(),  
        panel.grid.minor = element_blank(),
        axis.text.x = element_text(size = 15),  
        legend.text = element_text(size = 12),
        legend.title = element_text(size = 14)) +
  ylim(0,270)

# sleep disorder type
df %>% 
  group_by(disorder_type) %>%
  summarise(count = n()) %>%
  ggplot(aes(disorder_type, count, fill=disorder_type)) + 
  geom_bar(stat = "identity") +
  geom_text(aes(label = count), vjust = -0.5,size=7) + 
  theme(axis.text.y = element_blank(), 
        axis.ticks.y = element_blank(),
        axis.title.y = element_blank(),
        panel.grid.major = element_blank(),  
        panel.grid.minor = element_blank(),
        axis.text.x = element_text(size = 15),  
        legend.text = element_text(size = 12),
        legend.title = element_text(size = 14)) +
  ylim(0,270)

# Blood pressure
df %>% 
  group_by(blood_pressure) %>%
  summarise(count = n()) %>%
  ggplot(aes(blood_pressure, count, fill=blood_pressure)) +
  geom_bar(stat = "identity") +
  coord_flip() +
  geom_text(aes(label = count), hjust = -0.5,size=7) + 
  theme(axis.text.x = element_blank(), 
        axis.ticks.x = element_blank(),
        axis.title.x = element_blank(),
        panel.grid.major = element_blank(),  
        panel.grid.minor = element_blank(),
        axis.text.y = element_text(size = 15),  
        legend.text = element_text(size = 12),
        legend.title = element_text(size = 14)) +
  ylim(0,270) 

# Blood pressure & sleep disorder
df %>%
  group_by(blood_pressure, sleep_disorder) %>%
  summarise(count = n()) %>%
  ggplot(aes(blood_pressure, count, fill = sleep_disorder)) +
  geom_bar(stat = "identity", position = "dodge", na.rm = TRUE) +
  facet_wrap(~sleep_disorder) +
  coord_flip() +
  geom_text(aes(label = count), hjust = -0.5, size = 7, na.rm = TRUE) +
  theme(axis.text.x = element_blank(),
        axis.ticks.x = element_blank(),
        axis.title.x = element_blank(),
        panel.grid.major = element_blank(),
        panel.grid.minor = element_blank(),
        axis.text.y = element_text(size = 15),
        legend.text = element_text(size = 12),
        legend.title = element_text(size = 14)) +
  ylim(0, 200)

# BMI category
df %>% 
  group_by(bmi_category) %>%
  summarise(count = n()) %>%
  ggplot(aes(bmi_category, count, fill=bmi_category)) +
  geom_bar(stat = "identity") +
  geom_text(aes(label = count), vjust = -0.5,size=7) + 
  theme(axis.text.y = element_blank(), 
        axis.ticks.y = element_blank(),
        axis.title.y = element_blank(),
        panel.grid.major = element_blank(),
        panel.grid.minor = element_blank(),
        axis.text.x = element_text(size = 15),  
        legend.text = element_text(size = 12),
        legend.title = element_text(size = 14)) +
  ylim(0,270) 

# sleep duration
df %>% ggplot(aes(sleep_duration)) + 
  geom_histogram(binwidth=0.2,fill="steelblue")

#  sleep disorder and sleep duration 
df %>% group_by(sleep_disorder) %>% 
  summarise(avg_sleep_duration=mean(sleep_duration)) %>% 
  ggplot(aes(sleep_disorder,avg_sleep_duration)) + geom_col(aes(fill=sleep_disorder)) +
  geom_text(aes(label=round(avg_sleep_duration,2), vjust=-0.5),size=7) +
  theme(axis.text.y = element_blank(), 
        axis.ticks.y = element_blank(),
        panel.grid.major = element_blank(),  
        panel.grid.minor = element_blank(),
        axis.text.x = element_text(size = 15),  
        legend.text = element_text(size = 12),
        legend.title = element_text(size = 14)) +
  ylim(0,9)

# physical activity level
df %>% ggplot(aes(sleep_duration)) + 
  geom_histogram(binwidth=0.2,fill="steelblue")

# physical activity and sleep disorder
df %>% group_by(sleep_disorder) %>% 
  summarise(avg_activity_time=mean(physical_activity_level)) %>% 
  ggplot(aes(sleep_disorder, avg_activity_time)) + geom_col(aes(fill=sleep_disorder)) +
  geom_text(aes(label=round(avg_activity_time,2), vjust=-0.5)) +
  theme(axis.text.y = element_blank(), 
        axis.ticks.y = element_blank(),
        panel.grid.major = element_blank(),  
        panel.grid.minor = element_blank(),
        axis.text.x = element_text(size = 15),  
        legend.text = element_text(size = 12),
        legend.title = element_text(size = 14)) +
  ylim(0,65) 

# occupation
df %>%  
  group_by(occupation) %>%
  summarise(count = n()) %>%
  ggplot(aes(occupation, count, fill=occupation)) +
  geom_bar(stat = "identity") +
  coord_flip() +
  geom_text(aes(label = count), hjust = -0.5,size=7) + 
  theme(axis.text.x = element_blank(), 
        axis.ticks.x = element_blank(),
        axis.title.x = element_blank(),
        panel.grid.major = element_blank(),  
        panel.grid.minor = element_blank(),
        axis.text.y = element_text(size = 15),  
        legend.text = element_text(size = 12),
        legend.title = element_text(size = 14)) +
  ylim(0,80) 

# occupation & sleep disorder
df %>%  
  group_by(occupation, sleep_disorder) %>%
  summarise(count = n()) %>%
  ggplot(aes(occupation, count, fill=sleep_disorder)) +
  geom_bar(stat = "identity") +
  coord_flip() +
  facet_wrap(~sleep_disorder) + 
  geom_text(aes(label = count), hjust = -0.5,size=7) + 
  theme(axis.text.x = element_blank(), 
        axis.ticks.x = element_blank(),
        axis.title.x = element_blank(),
        panel.grid.major = element_blank(),  
        panel.grid.minor = element_blank(),
        axis.text.y = element_text(size = 15),  
        legend.text = element_text(size = 12),
        legend.title = element_text(size = 14)) +
  ylim(0,80) 


# correlation matrix
melt_corMat %>% ggplot(aes(Var1, Var2, fill=value)) + 
  geom_tile() + 
  scale_fill_gradient(low="red", high="steelblue") +
  geom_text(aes(label=round(value,2))) +
  theme(axis.text.y = element_text(size = 15),
        axis.text.x = element_text(size = 12))


# variable importance
rf_varImp$color = c("gray", "gray","red3", "gray", "red3","red3","steelblue","red3",
                    "gray","gray", "steelblue")

# Create the bar chart
ggplot(rf_varImp, aes(x = fct_reorder(Feature, Importance, .desc = TRUE), y = Importance, fill = color)) +
  geom_col() +
  scale_fill_manual(values = c("gray", "red3", "steelblue"),
                    labels = c("No Correlation", "Correlated", "Correlated")) +
  geom_text(aes(label = Importance), vjust = -0.5) +
  labs(title = "Variable Importance and Correlation", x = "Features", y = "Relative Importance") +
  theme_minimal() +
  theme(
    axis.text.y = element_blank(), 
    axis.ticks.y = element_blank(),
    axis.text.x = element_text(angle = 45, hjust = 1, size = 13)) +
  ylim(0,105)

# coefficients
write_csv(coef, "coef.csv")


