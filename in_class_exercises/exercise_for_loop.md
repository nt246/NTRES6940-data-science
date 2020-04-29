In class exercise: iteration with for loop
================

``` r
library(tidyverse)
library(gapminder)
```

#### 1. Write a script that loops through the gapminder data by continent and prints out whether the mean life expectancy is smaller or larger than 50 years.

    ## Average life expectancy in Asia is greater than 50. 
    ## Average life expectancy in Europe is greater than 50. 
    ## Average life expectancy in Africa is less than 50. 
    ## Average life expectancy in Americas is greater than 50. 
    ## Average life expectancy in Oceania is greater than 50.

#### 2. Modify the script from above to loop over each country. This time print out whether the life expectancy is smaller than 50, between 50 and 70, or greater than 70.

    ## Average life expectancy in Afghanistan is less than 50. 
    ## Average life expectancy in Albania is between 50 and 70. 
    ## Average life expectancy in Algeria is between 50 and 70. 
    ## Average life expectancy in Angola is less than 50. 
    ## Average life expectancy in Argentina is between 50 and 70. 
    ## Average life expectancy in Australia is more than 70. 
    ## Average life expectancy in Austria is more than 70. 
    ## Average life expectancy in Bahrain is between 50 and 70. 
    ## Average life expectancy in Bangladesh is less than 50. 
    ## Average life expectancy in Belgium is more than 70. 
    ## Average life expectancy in Benin is less than 50. 
    ## Average life expectancy in Bolivia is between 50 and 70. 
    ## Average life expectancy in Bosnia and Herzegovina is between 50 and 70. 
    ## Average life expectancy in Botswana is between 50 and 70. 
    ## Average life expectancy in Brazil is between 50 and 70. 
    ## Average life expectancy in Bulgaria is between 50 and 70. 
    ## Average life expectancy in Burkina Faso is less than 50. 
    ## Average life expectancy in Burundi is less than 50. 
    ## Average life expectancy in Cambodia is less than 50. 
    ## Average life expectancy in Cameroon is less than 50. 
    ## Average life expectancy in Canada is more than 70. 
    ## Average life expectancy in Central African Republic is less than 50. 
    ## Average life expectancy in Chad is less than 50. 
    ## Average life expectancy in Chile is between 50 and 70. 
    ## Average life expectancy in China is between 50 and 70. 
    ## Average life expectancy in Colombia is between 50 and 70. 
    ## Average life expectancy in Comoros is between 50 and 70. 
    ## Average life expectancy in Congo, Dem. Rep. is less than 50. 
    ## Average life expectancy in Congo, Rep. is between 50 and 70. 
    ## Average life expectancy in Costa Rica is more than 70. 
    ## Average life expectancy in Cote d'Ivoire is less than 50. 
    ## Average life expectancy in Croatia is more than 70. 
    ## Average life expectancy in Cuba is more than 70. 
    ## Average life expectancy in Czech Republic is more than 70. 
    ## Average life expectancy in Denmark is more than 70. 
    ## Average life expectancy in Djibouti is less than 50. 
    ## Average life expectancy in Dominican Republic is between 50 and 70. 
    ## Average life expectancy in Ecuador is between 50 and 70. 
    ## Average life expectancy in Egypt is between 50 and 70. 
    ## Average life expectancy in El Salvador is between 50 and 70. 
    ## Average life expectancy in Equatorial Guinea is less than 50. 
    ## Average life expectancy in Eritrea is less than 50. 
    ## Average life expectancy in Ethiopia is less than 50. 
    ## Average life expectancy in Finland is more than 70. 
    ## Average life expectancy in France is more than 70. 
    ## Average life expectancy in Gabon is between 50 and 70. 
    ## Average life expectancy in Gambia is less than 50. 
    ## Average life expectancy in Germany is more than 70. 
    ## Average life expectancy in Ghana is between 50 and 70. 
    ## Average life expectancy in Greece is more than 70. 
    ## Average life expectancy in Guatemala is between 50 and 70. 
    ## Average life expectancy in Guinea is less than 50. 
    ## Average life expectancy in Guinea-Bissau is less than 50. 
    ## Average life expectancy in Haiti is between 50 and 70. 
    ## Average life expectancy in Honduras is between 50 and 70. 
    ## Average life expectancy in Hong Kong, China is more than 70. 
    ## Average life expectancy in Hungary is between 50 and 70. 
    ## Average life expectancy in Iceland is more than 70. 
    ## Average life expectancy in India is between 50 and 70. 
    ## Average life expectancy in Indonesia is between 50 and 70. 
    ## Average life expectancy in Iran is between 50 and 70. 
    ## Average life expectancy in Iraq is between 50 and 70. 
    ## Average life expectancy in Ireland is more than 70. 
    ## Average life expectancy in Israel is more than 70. 
    ## Average life expectancy in Italy is more than 70. 
    ## Average life expectancy in Jamaica is between 50 and 70. 
    ## Average life expectancy in Japan is more than 70. 
    ## Average life expectancy in Jordan is between 50 and 70. 
    ## Average life expectancy in Kenya is between 50 and 70. 
    ## Average life expectancy in Korea, Dem. Rep. is between 50 and 70. 
    ## Average life expectancy in Korea, Rep. is between 50 and 70. 
    ## Average life expectancy in Kuwait is between 50 and 70. 
    ## Average life expectancy in Lebanon is between 50 and 70. 
    ## Average life expectancy in Lesotho is between 50 and 70. 
    ## Average life expectancy in Liberia is less than 50. 
    ## Average life expectancy in Libya is between 50 and 70. 
    ## Average life expectancy in Madagascar is less than 50. 
    ## Average life expectancy in Malawi is less than 50. 
    ## Average life expectancy in Malaysia is between 50 and 70. 
    ## Average life expectancy in Mali is less than 50. 
    ## Average life expectancy in Mauritania is between 50 and 70. 
    ## Average life expectancy in Mauritius is between 50 and 70. 
    ## Average life expectancy in Mexico is between 50 and 70. 
    ## Average life expectancy in Mongolia is between 50 and 70. 
    ## Average life expectancy in Montenegro is more than 70. 
    ## Average life expectancy in Morocco is between 50 and 70. 
    ## Average life expectancy in Mozambique is less than 50. 
    ## Average life expectancy in Myanmar is between 50 and 70. 
    ## Average life expectancy in Namibia is between 50 and 70. 
    ## Average life expectancy in Nepal is less than 50. 
    ## Average life expectancy in Netherlands is more than 70. 
    ## Average life expectancy in New Zealand is more than 70. 
    ## Average life expectancy in Nicaragua is between 50 and 70. 
    ## Average life expectancy in Niger is less than 50. 
    ## Average life expectancy in Nigeria is less than 50. 
    ## Average life expectancy in Norway is more than 70. 
    ## Average life expectancy in Oman is between 50 and 70. 
    ## Average life expectancy in Pakistan is between 50 and 70. 
    ## Average life expectancy in Panama is between 50 and 70. 
    ## Average life expectancy in Paraguay is between 50 and 70. 
    ## Average life expectancy in Peru is between 50 and 70. 
    ## Average life expectancy in Philippines is between 50 and 70. 
    ## Average life expectancy in Poland is more than 70. 
    ## Average life expectancy in Portugal is more than 70. 
    ## Average life expectancy in Puerto Rico is more than 70. 
    ## Average life expectancy in Reunion is between 50 and 70. 
    ## Average life expectancy in Romania is between 50 and 70. 
    ## Average life expectancy in Rwanda is less than 50. 
    ## Average life expectancy in Sao Tome and Principe is between 50 and 70. 
    ## Average life expectancy in Saudi Arabia is between 50 and 70. 
    ## Average life expectancy in Senegal is between 50 and 70. 
    ## Average life expectancy in Serbia is between 50 and 70. 
    ## Average life expectancy in Sierra Leone is less than 50. 
    ## Average life expectancy in Singapore is more than 70. 
    ## Average life expectancy in Slovak Republic is more than 70. 
    ## Average life expectancy in Slovenia is more than 70. 
    ## Average life expectancy in Somalia is less than 50. 
    ## Average life expectancy in South Africa is between 50 and 70. 
    ## Average life expectancy in Spain is more than 70. 
    ## Average life expectancy in Sri Lanka is between 50 and 70. 
    ## Average life expectancy in Sudan is less than 50. 
    ## Average life expectancy in Swaziland is less than 50. 
    ## Average life expectancy in Sweden is more than 70. 
    ## Average life expectancy in Switzerland is more than 70. 
    ## Average life expectancy in Syria is between 50 and 70. 
    ## Average life expectancy in Taiwan is more than 70. 
    ## Average life expectancy in Tanzania is less than 50. 
    ## Average life expectancy in Thailand is between 50 and 70. 
    ## Average life expectancy in Togo is between 50 and 70. 
    ## Average life expectancy in Trinidad and Tobago is between 50 and 70. 
    ## Average life expectancy in Tunisia is between 50 and 70. 
    ## Average life expectancy in Turkey is between 50 and 70. 
    ## Average life expectancy in Uganda is less than 50. 
    ## Average life expectancy in United Kingdom is more than 70. 
    ## Average life expectancy in United States is more than 70. 
    ## Average life expectancy in Uruguay is more than 70. 
    ## Average life expectancy in Venezuela is between 50 and 70. 
    ## Average life expectancy in Vietnam is between 50 and 70. 
    ## Average life expectancy in West Bank and Gaza is between 50 and 70. 
    ## Average life expectancy in Yemen, Rep. is less than 50. 
    ## Average life expectancy in Zambia is less than 50. 
    ## Average life expectancy in Zimbabwe is between 50 and 70.

#### 3. Use an if() statement to print a suitable message reporting whether there are any records from 2002 in the gapminder dataset. Now do the same for 2012.

    ## Record(s) for the year 2002 found.

    ## Record(s) for the year 2012 not found.
