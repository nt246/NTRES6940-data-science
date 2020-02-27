Pre-course installation guide
================

Please follow this guide to install the following free software on your laptop **before our first lecture**. It should only take about 20 minutes.


Install R and RStudio
-------------

Follow the instructions in [section 1.4](https://r4ds.had.co.nz/introduction.html#prerequisites) of the R for Data Science book. Make sure to get the free open source license RStudio Desktop version.

**Note**: If you already have R and RStudio installed, make sure you update to the most recent recent versions (R v3.6.2 and RStudio v1.2). There have been recent changes to many packages and some of the functions that we will use are not available or have different names in outdated versions.


Install R packages
----------

Please install the key R packages that we are going to use in this class. Install by copying the following code to RStudio console one line at a time and hit "Enter" to run.

``` r
install.packages("tidyverse")
install.packages("rmarkdown")
install.packages("knitr")
install.packages("cowplot")
install.packages(c("nycflights13", "gapminder", "Lahman"))
```

Install Slack and join our class workspace
-----

Please install [Slack](https://slack.com/download) on your laptop, and then [join the work space for our class](https://join.slack.com/t/ntres-6940/shared_invite/enQtOTYzMzc5NjMwNTgwLWJjNWIzOWUxOGE0YjliNjVlMDk2YjM4MDAwNzJkMzY2NDlmOTJmNjBjMjQwMTQwZTk5ZDA5N2EwNjE4Mzc4ZTE). We are going to use Slack as our primary communication channel for this course. To build broader connections, we also plan on opening our Slack workspace as a communication platform for the entire R user community at Cornell to create a venue where people can find help and/or collaboration oppotunities.

If you don't plan on using Slack regularly, please go to "Preferences" and check the box that says "Send me email notifications for mentions and direct messages". 

![](https://slackhq.com/wp-content/uploads/2023/05/2019-05_Haughey_CustomizeNotifications_mobile-notifications.png?w=460)

By clicking this option, you will able to receive all of our anouncements via email without needing to log in on Slack every time.


Create a GitHub account
--------------

If you don't have a GitHub account yet, create one [here](https://github.com/join). Give some thought to what you pick as your user name - see advice [here](https://happygitwithr.com/github-acct.html#username-advice).


Install Git
--------------
Download and install Git: (https://git-scm.com/downloads) 
Follow your operating system’s normal installation process. Note: you will not see an application called Git listed but if the installation process completed it was likely successful, and we will confirm together in class.


Install GitHub Desktop (optional)
-------------------------

You can optionally download the [GitHub Desktop program](https://desktop.github.com/). RStudio has some of the same functionalities as GitHub Desktop, and it is a matter of personal preference when choosing which program to use.
