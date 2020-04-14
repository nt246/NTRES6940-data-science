Assignment 4: Data exploration
================

Instructions: Please read through this before you begin
-------------------------------------------------------

-   This assignment is due by **10pm on Wednesday 04/22/20**.

-   Please **reproduce this markdown template**. Pay attention to all the formating in this file, including bullet points, bolded characters, inserted code chunks, headings, text colors, blank lines, and etc.

-   For the first exercise in this assignment, you will explore a dataset with details about passengers on the Titanic. First, **answer the questions below and use figures or tables to support your answer**. Then, **explore the dataset on your own** using the data transformation and visualization skills that you have learned in this class so far.

    -   For this exercise, please make sure to put some thought into **editing the aesthetics of your figures and tables** to make them easier to understand and nicer to look at (e.g. choose the most appropriate geometric object, aesthetic mapping, facetting, position adjustment; add meaningful axis labels, figure titles, legend titles; change the background; be creative; and etc.).

    -   When a verbal response is needed, answer by replacing the part in the R markdown template where it says <span style="color:blue"> "Write your response here" </span>.

-   For the second exercise in this assignment, you will use the data wrangling and visualization skills that you have learned in this class to reproduce a figure exactly as it is shown.

-   Have all your code embedded within the R markdown file, and show both of your **code** and **plots** in the knitted markdown file.

-   Use R Markdown functionalities to **hide messages and warnings when needed**. (Suggestion: messages and warnings can often be informative and important, so please examine them carefully and only turn them off when you finish the exercise).

-   Please name your R markdown file `assignment_4.Rmd` and the knitted markdown file `assignment_4.md`. Please upload both files using your personal GitHub repository for this class.

-   First, load all the required packages with the following code. Install them if they are not installed yet.

``` r
library(tidyverse)
library(knitr)
```

<br>

Exercise 1: Titanic passengers
------------------------------

This dataset contains information about a subset of the passengers who were aboard the Titanic when it sank in 1912.

``` r
titanic<-read_csv("https://raw.githubusercontent.com/nt246/NTRES6940-data-science/master/datasets/Titanic.csv")
kable(head(titanic))
```

|  PassengerId|  Survived|  Pclass| Name                                                | Sex    |  Age|  SibSp|  Parch| Ticket           |     Fare| Cabin | Embarked |
|------------:|---------:|-------:|:----------------------------------------------------|:-------|----:|------:|------:|:-----------------|--------:|:------|:---------|
|            1|         0|       3| Braund, Mr. Owen Harris                             | male   |   22|      1|      0| A/5 21171        |   7.2500| NA    | S        |
|            2|         1|       1| Cumings, Mrs. John Bradley (Florence Briggs Thayer) | female |   38|      1|      0| PC 17599         |  71.2833| C85   | C        |
|            3|         1|       3| Heikkinen, Miss. Laina                              | female |   26|      0|      0| STON/O2. 3101282 |   7.9250| NA    | S        |
|            4|         1|       1| Futrelle, Mrs. Jacques Heath (Lily May Peel)        | female |   35|      1|      0| 113803           |  53.1000| C123  | S        |
|            5|         0|       3| Allen, Mr. William Henry                            | male   |   35|      0|      0| 373450           |   8.0500| NA    | S        |
|            6|         0|       3| Moran, Mr. James                                    | male   |   NA|      0|      0| 330877           |   8.4583| NA    | Q        |

And here are descriptions of the variables in the dataset

``` r
notes<-read_csv("https://raw.githubusercontent.com/nt246/NTRES6940-data-science/master/datasets/Notes.csv")
kable(notes)
```

| Variable    | Definition                                  | Key                                            |
|:------------|:--------------------------------------------|:-----------------------------------------------|
| PassengerId | Passenger ID                                | NA                                             |
| Survival    | Survival                                    | 0 = No, 1 = Yes                                |
| Pclass      | Ticket class                                | 1 = 1st, 2 = 2nd, 3 = 3rd                      |
| Name        | Pasenger name                               | NA                                             |
| Sex         | Sex                                         | NA                                             |
| Age         | Age in years                                | NA                                             |
| Sibsp       | \# of siblings / spouses aboard the Titanic | NA                                             |
| Parch       | \# of parents / children aboard the Titanic | NA                                             |
| Ticket      | Ticket number                               | NA                                             |
| Fare        | Passenger fare                              | NA                                             |
| Cabin       | Cabin number                                | NA                                             |
| Embarked    | Port of Embarkation                         | C = Cherbourg, Q = Queenstown, S = Southampton |

Note: Age is fractional if less than 1. If the age is estimated, it is in the form of xx.5

### Part 1.

**Answer the questions below** and use **figures or tables** to support your answer. Choose the most appropriate type of figure or table for each question.

#### 1.1 According to Wikipedia, there was an estimated 2,224 passengers and crew onboard the Titanic when it sank. How many of them do we have information on in this dataset? How many of them survived and how many did not? What is the overall survival rate?

``` r
## Write your code here
```

<span style="color:blue"> Write your response here </span>

<br>

#### 1.2 How many passengers on the Titanic were males and how many were females? What do you find when you break it down by ticket class?

``` r
## Write your code here
```

<span style="color:blue"> Write your response here </span>

<br>

#### 1.3 How many passengers of each sex survived and how many of them did not? What is the survival rate for passengers of each sex?

``` r
## Write your code here
```

<span style="color:blue"> Write your response here </span>

<br>

#### 1.4 How many passengers do we have age information for (including estimated age)? For how many is the age information missing? What is the age distribution for passengers whose age information is available?

``` r
## Write your code here
```

<span style="color:blue"> Write your response here </span>

<br>

#### 1.5 Show the age distribution per ticket class, per sex. What do you find?

``` r
## Write your code here
```

<span style="color:blue"> Write your response here </span>

<br>

#### 1.6 What is the age distribution of passengers who survived vs. those who did not? What hypothesis can you come up with when comparing these two distributions?

``` r
## Write your code here
```

<span style="color:blue"> Write your response here </span>

<br>

#### 1.7 In this dataset, the Fare variable does not represent the fare per person. Instead, each ticket number has a corresponding fare, and some passengers share one single ticket number. Therefore, the Fare variable is the total fare for a group of passengers sharing the same ticket number. Knowing this, calculate the average fare per person. (You don't need to show a table or a figure for this question, just show the code for the calculation)

``` r
## Write your code here
```

<span style="color:blue"> Write your response here </span>

<br>

#### 1.8 Show the distribution of the number of family members (including siblings, spouses, parents, and children) that each passenger was accompanied by. Were most passengers travelling solo or with family?

``` r
## Write your code here
```

<span style="color:blue"> Write your response here </span>

<br>

#### 1.9 Which ticket class did most of the largest families get? And which ticket class has the lowest proportion of female passengers who travelled solo out of all the female passengers in that class?

``` r
## Write your code here
```

<span style="color:blue"> Write your response here </span>

<br>

#### 1.10 Do the port of embarkation matter for the survival rates of passengers? Why might this be the case?

``` r
## Write your code here
```

<span style="color:blue"> Write your response here </span>

### Part 2

Explore other aspects of this dataset on your own using **a variety of the skills** that you have learned in this class so far (i.e. data visualization, transformation, and exploration). Come up with **at least 3 interesting findings or potential hypotheses**.

#### 1.11

``` r
## Write your code here
```

<span style="color:blue"> Write your response here </span>

<br>

#### 1.12

``` r
## Write your code here
```

<span style="color:blue"> Write your response here </span>

<br>

#### 1.13

``` r
## Write your code here
```

<span style="color:blue"> Write your response here </span>

<br>

#### Don't hesitate to continue writing if you have more than 3 interesting findings.

<br>

Exercise 2: Fuel Efficiency of Car Models
-----------------------------------------

This exercise uses the `mtcars` dataset. It was extracted from the 1974 Motor Trend US magazine, and comprises fuel consumption and 10 aspects of automobile design and performance for 32 automobiles (1973–74 models).

``` r
kable(head(mtcars))
```

|                   |   mpg|  cyl|  disp|   hp|  drat|     wt|   qsec|   vs|   am|  gear|  carb|
|-------------------|-----:|----:|-----:|----:|-----:|------:|------:|----:|----:|-----:|-----:|
| Mazda RX4         |  21.0|    6|   160|  110|  3.90|  2.620|  16.46|    0|    1|     4|     4|
| Mazda RX4 Wag     |  21.0|    6|   160|  110|  3.90|  2.875|  17.02|    0|    1|     4|     4|
| Datsun 710        |  22.8|    4|   108|   93|  3.85|  2.320|  18.61|    1|    1|     4|     1|
| Hornet 4 Drive    |  21.4|    6|   258|  110|  3.08|  3.215|  19.44|    1|    0|     3|     1|
| Hornet Sportabout |  18.7|    8|   360|  175|  3.15|  3.440|  17.02|    0|    0|     3|     2|
| Valiant           |  18.1|    6|   225|  105|  2.76|  3.460|  20.22|    1|    0|     3|     1|

#### 2.1 Reproduce the following plot, which shows the miles per gallon (`mpg`) of car models on the x axis (see hints below). Different models are ordered on the y axis according to their `mpg` and their names are shown next to the data points. Also, the size of each data point maps to its horse power (`hp`), and the color maps to number of cylinders (`cyl`).

![](assignment_4_files/figure-markdown_github/unnamed-chunk-18-1.png)

<br>

##### Hint 1: Start by transforming the data frame into the following format.

-   Convert rownames to a column. (`rownames_to_column()` might be helpful)
-   Create a new variable which shows the order of car models based on their mpg. (`row_number()` might be helpful)

The first few rows of this new data frame might look like the following.

| rowname           |   mpg|  mpg\_order|  cyl|   hp|
|:------------------|-----:|-----------:|----:|----:|
| Mazda RX4         |  21.0|          19|    6|  110|
| Mazda RX4 Wag     |  21.0|          20|    6|  110|
| Datsun 710        |  22.8|          24|    4|   93|
| Hornet 4 Drive    |  21.4|          21|    6|  110|
| Hornet Sportabout |  18.7|          15|    8|  175|
| Valiant           |  18.1|          14|    6|  105|

<br>

##### Hint 2: When making the plot, please pay attention to the following elements of the plot that need to be specified.

-   Horizontal adjustment of the text labels ("`hjust`" option in `geom_text()`)
-   The range of the x-axis (`xlim()`)
-   x-axis label and legend titles (`labs()`)
-   Background
-   The removal of the y-axis (`theme()`)
