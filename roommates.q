# Importing necessary packages
import pandas as pd

# Creating base objects
data_list = []
database_df = pd.DataFrame(columns = ['cooking',
                                      'visitors',
                                      'bed_time',
                                      'weekends',
                                      'clean',
                                      'deal_breakers',
                                      'sharing' ])

# Developing an Excel file to handle multi-user data
database_df.to_excel('Roomies_Data.xlsx',
                     index = False)
######################################################
##### Loading the database object
database_df = pd.read_excel('Roomies_Data.xlsx')

# input() data
cooking                = input('How often do you cook? ')
visitors               = input('Do you expect a lot of out-of-town visitors? ')
bed_time               = input('What time do you go to bed? ')
weekends               = input('What do you do on the weekends? ')
clean                  = input('How often do you clean? ')
deal_breakers          = input('What are your deal breakers? ')
sharing                = input('Sharing is caring, or every man for himself? ')




data_list.append({'cooking' : cooking,'visitors' : visitors,'bed_time' : bed_time, 'weekends' : weekends, 
                  'clean' : clean, 'deal_breakers' : deal_breakers,'sharing' : sharing})

user_data = database_df.append(data_list[-1],
                               ignore_index=True)


user_data.to_excel('Roomies_Data.xlsx',
                   index = False)
