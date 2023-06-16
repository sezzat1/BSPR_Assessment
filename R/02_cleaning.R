#02 Cleaning 


#### 1. opening the data set


my_data <- read.csv(here("data", "raw", "all_data.csv"), sep = ";", dec = ".")


---------------------------------------------------------------------------------------------------------
  
  #### 2. visualizing the data set
  
str(my_data)
head(my_data)
View(my_data)

---------------------------------------------------------------------------------------------------------
  
  #### 3. cleaning data set
  
  ############# We would like to know the immune reponse of the eggfree plants and their distance
  ############# Therefore, we will remove the data obtained from the egg-treated plant 
  ############# We will also consider the na as NA and remove the NA 
  
  
  my_data[my_data == "na"] <- NA

pro_data <- my_data %>% 
  select(neighbour_3cm, neighbour_6cm, neighbour_9cm, neighbour_12cm) %>%
  drop_na() %>% 
  mutate(neighbour_12cm = as.numeric(neighbour_12cm))

str(pro_data)
head(pro_data) 
View(pro_data)

--------------------------------------------------------------------------------------------------------
  
  #### 4. Save new data frame into a csv
  
  write.csv(x = pro_data, file = "data/processed/processed_data.csv")