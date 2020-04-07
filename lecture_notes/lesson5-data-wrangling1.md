Lesson 5: Data Wrangling Part 1
================

<br>

## Readings

Chapter 5.1-5.5 in [R for Data
Science](https://r4ds.had.co.nz/transform.html) by Hadley Wickham &
Garrett Grolemund

<br>

## Class announcements

  - **Welcome to the online format\!**  
    Updated syllabus
    [here](https://github.com/nt246/NTRES6940-data-science)  
    Each class will be broken into two parts:
    
      - **Part A:** Pre-recorded lecture with exercises (~50 minutes,
        suggested time: Mondays and Wednesdays 4.20 - 5.10pm)
      - **Part B:** Live Zoom session for Q\&A and collaborative
        exercises (Mondays and Wednesdays 5.10 - 5.40pm) <br>  

  - Videos will be available through the [course Canvas
    site](https://canvas.cornell.edu/courses/14389). If you don’t have
    access let me know ASAP. <br>

  - Nicolas and Nina will be on Slack (`lecture-chat` channel or direct
    message) and on Zoom with a waiting room to address questions and
    help troubleshoot technical issues during the lecture period
    4.20-5.10pm Mondays and Wednesdays. You will need to be signed into
    Canvas to access the Zoom call <br>  

  - Feedback on the online format welcome\! Teaching online is
    completely new for us and we are very receptive to ideas for
    improvement
    
      - New `feedback-online-format` channel in Slack workspace

  - **Problem set 2 due at 10pm this Wednesday (04/08/20)**

<br>

## Learning objectives for today’s class

Now that we have explored some of the powerful ways `ggplot` lets us
visualize data, let’s take a step back and discuss tools to get data
into the right format we need for downstream analysis. Often you’ll need
to create some new variables or summaries, or maybe you just want to
rename the variables or reorder the observations in order to make the
data a little easier to work with.

<br>

> Data scientists, according to interviews and expert estimates, spend
> from 50 percent to 80 percent of their time mired in the mundane labor
> of collecting and preparing data, before it can be explored for useful
> information. - [NYTimes
> (2014)](http://www.nytimes.com/2014/08/18/technology/for-big-data-scientists-hurdle-to-insights-is-janitor-work.html)

<br>

By the end of today’s class, you should be able to:

  - Subset and rearrange data with key `dplyr` functions
      - Pick observations by their values `filter()`
      - Pick variables by their names `select()`
      - Create new variables with functions of existing variables
        `mutate()`
      - Reorder the rows `arrange()`
  - Use piping (`%>%`) when implementing function chains
  - Understand the basic differences between tidyverse and base R syntax
  - Make sure your RStudio working files are sync’ed to GitHub

<br>

**Acknowledgements**: Today’s lecture is adapted (with permission) from
the excellent [Ocean Health Index Data Science
Training](http://ohi-science.org/data-science-training/dplyr.html) and
Jenny Bryan’s lectures from STAT545 at UBC: [Introduction to
dplyr](http://stat545.com/block009_dplyr-intro.html). .

<br>

## What is data wrangling?

What are some common things you like to do with your data? Maybe remove
rows or columns, do calculations and maybe add new columns? This is
called **data wrangling** (“the process of cleaning, structuring and
enriching raw data into a desired format for better analysis in less
time” by [one definition](https://www.trifacta.com/data-wrangling/).
It’s not data management or data manipulation: you **keep the raw data
raw** and do these things programatically in R with the tidyverse.

We are going to introduce you to data wrangling in R first with the
tidyverse. The tidyverse is a suite of packages that match a philosophy
of data science developed by Hadley Wickham and the RStudio team. I find
it to be a more straight-forward way to learn R. We will also show you
by comparison what code will look like in “Base R”, which means, in R
without any additional packages (like the “tidyverse” package)
installed. I like David Robinson’s blog post on the topic of [teaching
the tidyverse first](http://varianceexplained.org/r/teach-hard-way).

For some things, base-R is more straight forward, and we’ll show you
that too. Whenever we use a function that is from the tidyverse, we will
prefix it so you’ll know for sure. <br>

### Setup

Throughout today’s class, we’ll explore functions, take notes, and do
our exercises in a new RMarkdown file, and to practice our GitHub
integration and version control, we will make sure our new R Markdown
working document gets sync’ed to our GitHub account.

**Here’s what to do:**

Before we start, open the R Project that you created earlier in the
course that is associated with your personal GitHub repository hosted
under the class organization (you can find the link to it
[here](https://classroom.github.com/a/SA7QIA7g). Your repo name should
be `therkildsen-class/ntres-6940-YOUR_USER_NAME`. If you followed the
instructions, your R Project linked to this account should be named
`ntres-6940-YOUR_USER_NAME`. If you can’t remember where you saved it on
your local computer, you can search for this (replace YOUR\_USER\_NAME
with your GitHub account name) on your computer. Click on the
`ntres-6940-YOUR_USER_NAME.Rproj` file.

Then

1.  If RStudio was already open, clear your workspace (Session \>
    Restart R)
2.  New File \> R Markdown…
3.  Save as `coronavirus-wrangle.Rmd` save it to your course notes
    folder within your GitHub-linked folder.
4.  Delete the irrelevant text and write a little note to yourself about
    how we’ll be wrangling coronavirus data using dplyr. Edit the title
    and change the output format to ‘github\_document’.

<br>

## Sync to GitHub

If you forgot the workflow, review
[lesson 3](https://github.com/nt246/NTRES6940-data-science/blob/master/lecture_notes/lesson3-version-control.md#sync-from-rstudio-local-to-github-remote).

<img src="../img/commit_steps.png" width="100%" />

<br>

### Load `tidyverse` (which has `dplyr` inside)

In your R Markdown file, let’s make sure we’ve got our libraries loaded.
Write the following:

``` r
library(tidyverse)     ## install.packages("tidyverse")
```

This is becoming standard practice for how to load a library in a file,
and if you get an error that the library doesn’t exist, you can install
the package easily by running the code within the comment (highlight
`install.packages("tidyverse")` and run it).

<br>

## Coronavirus data set

As the COVID-19 crisis is at the forefront of everyone’s minds at the
moment, lets use a dataset tallying daily developments in recorded
Coronavirus cases across the world, so that we can develop our data
wrangling skills by exploring global patterns in the pandemic.

We will use a dataset compiled in the [`coronavirus` R
package](https://github.com/RamiKrispin/coronavirus) developed by Rami
Krispin. This package (hosted on GitHub) pulls raw data from the Johns
Hopkins University Center for Systems Science and Engineering (JHU CCSE)
Coronavirus repository and is frequently updated.

The compiled package is available to install like any other package from
CRAN with `install.packages`. However, it keeps getting updated, so to
make sure that we’re always working with the most current version, we
will import the dataset directly from GitHub.

Let’s first check when the `coronavirus_dataset.csv` file on the
[coronavirus package GitHub
page](https://github.com/RamiKrispin/coronavirus-csv) was last updated.

If we click on the `coronavirus_dataset.csv` file, we’ll see that it’s
too large to display on GitHub in data-view mode. We can read this data
into R directly from GitHub, without downloading it. But we can’t read
this data in view-mode. We have to click on the **View raw** link in the
view window. This displays it as the raw csv file, without formatting.

Copy the url for raw data:
<https://raw.githubusercontent.com/RamiKrispin/coronavirus-csv/master/coronavirus_dataset.csv>

Now, let’s go back to RStudio. In our R Markdown, let’s read this csv
file and name the variable “coronavirus”. We will use the `read_csv()`
function from the `readr` package (part of the tidyverse, so it’s
already installed\!).

``` r
# read in corona .csv
coronavirus <- read_csv('https://raw.githubusercontent.com/RamiKrispin/coronavirus-csv/master/coronavirus_dataset.csv', col_types = cols(Province.State = col_character()))
```

For today, don’t worry about why we need to specify the `col_types`
argument - we will cover the details of data import functions in a few
weeks.

Once we have the data loaded, let’s start getting familiar with its
content and format.

Let’s inspect:

``` r
## explore the coronavirus dataset
coronavirus # this is super long! Let's inspect in different ways
```

Let’s use `head` and `tail`:

``` r
head(coronavirus) # shows first 6
tail(coronavirus) # shows last 6
head(coronavirus, 10) # shows first X that you indicate
tail(coronavirus, 12) # guess what this does!
```

We can also see the `coronavirus` variable in RStudio’s Environment pane
(top right)

More ways to learn basic info on a data.frame.

``` r
names(coronavirus)
dim(coronavirus)    # ?dim dimension
ncol(coronavirus)   # ?ncol number of columns
nrow(coronavirus)   # ?nrow number of rows
```

A statistical overview can be obtained with `summary()`, or with
`skimr::skim()`

``` r
summary(coronavirus)

# If we don't already have skimr installed, we will need to install it
# install.packages('skimr')
library(skimr) 
skim(coronavirus)
```

<br>

### Look at the variables inside a data.frame

To specify a single variable from a data.frame, use the dollar sign `$`.
The `$` operator is a way to extract of replace parts of an object —
check out the help menu for `$`. It’s a common operator you’ll see in R.

``` r
coronavirus$cases # very long! hard to make sense of...
head(coronavirus$cases) # can do the same tests we tried before
str(coronavirus$cases) # it is a single numeric vector
summary(coronavirus$cases) # same information, formatted slightly differently
```

<br>

## `dplyr` basics

OK, so let’s start wrangling with dplyr.

There are five `dplyr` functions that you will use to do the vast
majority of data manipulations:

  - **`filter()`**: pick observations by their
    values
    
    <!--html_preserve-->
    
    <img src="../img/rstudio-cheatsheet-filter.png" width="300"/><!--/html_preserve-->

  - **`select()`**: pick variables by their
    names
    
    <!--html_preserve-->
    
    <img src="../img/rstudio-cheatsheet-select.png" width="300"/><!--/html_preserve-->

  - **`mutate()`**: create new variables with functions of existing
    variables
    
    <!--html_preserve-->
    
    <img src="../img/rstudio-cheatsheet-mutate.png" width="300"/><!--/html_preserve-->

  - **`arrange()`**: reorder the rows

  - **`summarise()`**: collapse many values down to a single
    summary
    
    <!--html_preserve-->
    
    <img src="../img/rstudio-cheatsheet-summarise.png" width="300"/><!--/html_preserve-->

These can all be used in conjunction with `group_by()` which changes the
scope of each function from operating on the entire dataset to operating
on it group-by-group. These six functions provide the verbs for a
language of data manipulation. **We will cover the first four today and
`summarise()` and `group_by()` on Wednesday.**

All verbs work similarly:

1.  The first argument is a data frame.
2.  The subsequent arguments describe what to do with the data frame.
    You can refer to columns in the data frame directly without using
    `$`.
3.  The result is a new data frame.

Together these properties make it easy to chain together multiple simple
steps to achieve a complex result.

<br>

## `filter()` subsets data row-wise (observations).

You will want to isolate bits of your data; maybe you want to only look
at a single country or a few years. R calls this subsetting.

`filter()` is a function in `dplyr` that takes logical expressions and
returns the rows for which all are `TRUE`.

Visually, we are doing this (thanks RStudio for your
[cheatsheet](http://www.rstudio.com/wp-content/uploads/2015/02/data-wrangling-cheatsheet.pdf)):

![](../img/rstudio-cheatsheet-filter.png) Remember your logical
expressions? If not, here is a reminder
[here](https://www.statmethods.net/management/operators.html#Logical).
We’ll use `>` and `==` here.

``` r
filter(coronavirus, cases > 0)
```

You can say this out loud: “Filter the coronavirus data for cases
greater than 0”. Notice that when we do this, all the columns are
returned, but only the rows that have the a non-zero case count. We’ve
subsetted by row.

Let’s try another: “Filter the coronavirus data for the country US”.

``` r
filter(coronavirus, Country.Region == "US")
```

Note that when you run that line of code, `dplyr` executes the filtering
operation and returns a new data frame. `dplyr` functions never modify
their inputs, so if you want to save the result, you’ll need to use the
assignment operator, `<-`:

``` r
coronavirus_us <- filter(coronavirus, Country.Region == "US")
```

How about if we want two country names? We can’t use a single instance
of the `==` operator here, because it can only operate on one thing at a
time. We can use [Boolean
operators](https://r4ds.had.co.nz/transform.html#logical-operators) for
this: `&` is “and”, `|` is “or”, and `!` is “not”. So if we want records
from both the US and Canada, we can type

``` r
filter(coronavirus, Country.Region == "US" | Country.Region == "Canada")
```

A useful short-hand for this problem is `x %in% y`. This will select
every row where `x` is one of the values in `y`. We could use it to
rewrite the code above:

``` r
filter(coronavirus, Country.Region %in% c("US", "Canada"))
```

How about if we want only the death counts in the US? You can pass
filter different criteria:

``` r
# We can use either of these notations:
filter(coronavirus, Country.Region == "US", type == "death")
filter(coronavirus, Country.Region == "US" & type == "death")
```

## Your turn

> What was the total number of deaths in the US in the time period
> covered in the dataset?  
> Hint: do this in 2 steps by assigning a variable and then using the
> `sum()` function.
> 
> Then, sync to Github.com (pull, stage, commit, push).

<br>

### Answer

This is one way to do it based on what we have learned so far:

``` r
x <- filter(coronavirus, Country.Region == "US", type == "death")  
sum(x$cases)  
```

<br> <br>

## `select()` subsets data column-wise (variables)

We use `select()` to subset the data on variables or columns.

Visually, we are doing this (thanks RStudio for your
[cheatsheet](http://www.rstudio.com/wp-content/uploads/2015/02/data-wrangling-cheatsheet.pdf)):

![](../img/rstudio-cheatsheet-select.png)

We can select multiple columns with a comma, after we specify the data
frame (coronavirus).

``` r
select(coronavirus, date, Country.Region, type, cases) 
```

Note how the order of the columns also have been rearranged to match the
order they are listed in the `select()` function.

We can also use `-` to deselect columns

``` r
select(coronavirus, -Lat, -Long) # you can use - to deselect columns
```

<br>

## Use `select()` and `filter()` together

Let’s filter for the US and remove the Lat, Long and Province.State
columns (because this dataset doesn’t currently have data broken down by
US state). We’ll save this as a variable. Actually, as two temporary
variables, which means that for the second one we need to operate on
`coronavirus_us`, not `coronavirus`.

``` r
coronavirus_us  <- filter(coronavirus, Country.Region == "US")
coronavirus_us2 <- select(coronavirus_us, -Lat, -Long, -Province.State) 
```

We also could have called them both `coronavirus_us` and overwritten the
first assignment. Either way, naming them and keeping track of them gets
super cumbersome, which means more time to understand what’s going on
and opportunities for confusion or error.

Good thing there is an awesome alternative.

<br>

## Meet the new pipe `%>%` operator

Before we go any further, we should explore the new pipe operator that
`dplyr` imports from the
[`magrittr`](https://github.com/smbache/magrittr) package by Stefan
Bache. If you have have not used this before, **this is going to change
your life** (at least your coding life…). You no longer need to enact
multi-operation commands by nesting them inside each other. And we won’t
need to make temporary variables like we did in the US example above.
This new syntax leads to code that is much easier to write and to read:
it actually tells the story of your analysis.

Here’s what it looks like: `%>%`. The RStudio keyboard shortcut: Ctrl +
Shift + M (Windows), Cmd + Shift + M (Mac).

Let’s demo then I’ll explain:

``` r
coronavirus %>% head()
```

This is equivalent to `head(coronavirus)`. This pipe operator takes the
thing on the left-hand-side and **pipes** it into the function call on
the right-hand-side. It literally drops it in as the first argument.

Never fear, you can still specify other arguments to this function\! To
see the first 3 rows of coronavirus, we could say `head(coronavirus, 3)`
or this:

``` r
coronavirus %>% head(3)
```

**I’ve advised you to think “gets” whenever you see the assignment
operator, `<-`. Similarly, you should think “and then” whenever you see
the pipe operator, `%>%`.**

One of the most awesome things about this is that you START with the
data before you say what you’re doing to DO to it. So above: “take the
coronavirus data, and then give me the first three entries”.

This means that instead of this:

``` r
## instead of this...
coronavirus_us  <- filter(coronavirus, Country.Region == "US")
coronavirus_us2 <- select(coronavirus_us, -Lat, -Long, -Province.State) 
## ...we can do this
coronavirus_us  <- coronavirus %>% filter(Country.Region == "US")
coronavirus_us2 <- coronavirus_us %>% select(-Lat, -Long, -Province.State) 
```

So you can see that we’ll start with coronavirus in the first example
line, and then coronavirus\_us in the second. This makes it a bit easier
to see what data we are starting with and what we are doing to it.

…But, we still have those temporary variables so we’re not truly that
better off. But get ready to be majorly impressed:

<br>

### Revel in the convenience

We can use the pipe to chain those two operations together:

``` r
coronavirus_us  <- coronavirus %>% 
  filter(Country.Region == "US") %>%
  select(-Lat, -Long, -Province.State) 
```

What’s happening here? In the second line, we were able to delete
`coronavirus_us2 <- coronavirus_us`, and put the pipe operator above.
This is possible since we wanted to operate on the `coronavirus_us` data
anyways. And we weren’t truly excited about having a second variable
named `coronavirus_us2` anyways, so we can get rid of it. This is huge,
because most of your data wrangling will have many more than 2 steps,
and we don’t want a `coronavirus_us17`\!

By using multiple lines I can actually read this like a story and there
aren’t temporary variables that get super confusing. In my head:

> “start with the `coronavirus` data, and then  
> filter for the US, and then  
> drop the variables Lat, Long, and Province.State.” Being able to read
> a story out of code like this is really game-changing. We’ll continue
> using this syntax as we learn the other dplyr verbs.

Compare with some base R code to accomplish the same things. Base R
requires subsetting with the \[rows, columns\] notation. This notation
is something you’ll see a lot in base R. the brackets \[ \] allow you to
extract parts of an object. Within the brackets, the comma separates
rows from columns.

If we don’t write anything after the comma, that means “all columns”.
And if we don’t write anything before the comma, that means “all rows”.

Also, the $ operator is how you access specific columns of your
dataframe.

``` r
#There are many ways we could subset columns, here's one
coronavirus[coronavirus$Country.Region == "US", colnames(coronavirus) %in% c("Lat", "Long", "Province.State")==FALSE] ## repeat `coronavirus`, [i, j] indexing is distracting.
```

Never index by blind
numbers\!

``` r
#There are many ways we could subset columns, here's another (bad choice)
head(coronavirus)
coronavirus[coronavirus$Country.Region == "US", c(2, 5:7)] 
```

Why is this a terrible idea?

  - It is not self-documenting. What are the columns were retaining
    here?
  - It is fragile. This line of code will produce different results if
    someone changes the organization of the dataset, e.g. adds new
    variables. This is especially risky if we index rows by numbers as a
    sorting action earlier in the script would then give unexpected
    results.

This call explains itself and is fairly robust.

``` r
coronavirus_us  <- coronavirus %>% 
  filter(Country.Region == "US") %>%
  select(-Lat, -Long, -Province.State) 
```

<br>

## `mutate()` adds new variables

Alright, let’s keep going.

Let’s say we needed to add an index column so we know which order these
data came in. Let’s not make a new variable, let’s add a column to our
coronavirus data frame. How do we do that? With the `mutate()` function.

Visually, we are doing this (thanks RStudio for your
[cheatsheet](http://www.rstudio.com/wp-content/uploads/2015/02/data-wrangling-cheatsheet.pdf)):

![](../img/rstudio-cheatsheet-mutate.png)

The current variables in the coronavirus dataset don’t lend themselves
well to cross-computation, so to illustrate the power of the mutate()
function, let’s reformat the dataset so that we get the counts of
confirmed cases, deaths and recovered for each date and country in
separate columns. The tidyverse has a very convenient function for
making that kind of transformation. Don’t worry about how it works right
now, we’ll get an opportunity to explore it next week.

For now, just copy the following code to summarize the total number of
cases recorded by country and type (in the time period covered by this
dataset `min(coronavirus$date)` to `max(coronavirus$date)`):

``` r
coronavirus_ttd <- coronavirus %>% 
  select(country = Country.Region, type, cases) %>%
  group_by(country, type) %>%
  summarise(total_cases = sum(cases)) %>%
  pivot_wider(names_from = type,
              values_from = total_cases) %>%
  arrange(-confirmed)
```

Imagine we want to know each country’s death rate. We can divide the
case counts of `death` by `confirmed` to create a new column named
`deathrate`.

``` r
coronavirus_ttd %>%
  mutate(deathrate = death / confirmed) 
```

### Your turn

> Add a new variable that shows the proportion of confirmed cases for
> which the outcome is still unknown (i.e. not counted as dead or
> recovered) for each country and show only countries more than 20,000
> confirmed cases.
> 
> Then, sync your RMarkdown file to Github.com (pull, stage, commit,
> push).

#### Answer

``` r
coronavirus_ttd %>%
  mutate(undet = (confirmed - death - recovered) / confirmed) %>% 
  filter(confirmed > 20000)
```

**Now back to `select()`**

You’ve seen simple use of `select()`. There are two tricks you might
enjoy:

  - `select()` can rename the variables you request to keep.
  - `select()` can be used with everything() to hoist a variable up to
    the front of the tibble.

<!-- end list -->

``` r
coronavirus_ttd %>%
  mutate(undet = (confirmed - death - recovered) / confirmed) %>% 
  select(undetermined = undet, confirmed, country) %>% 
  select(country, everything())
```

<br>

## `arrange()` orders rows

For examining the output of our previous calculations, we may want to
re-arrange the countries in ascending order for the proportion of
confirmed cases for which the outcome remains unknown. The dplyr
function for sorting rows is `arrange()`.

``` r
coronavirus_ttd %>%
  mutate(undet = (confirmed - death - recovered)/confirmed) %>% 
  filter(confirmed > 20000) %>% 
  arrange(undet)
```

I advise that your analyses NEVER rely on rows or variables being in a
specific order. But it’s still true that human beings write the code and
the interactive development process can be much nicer if you reorder the
rows of your data as you go along. Also, once you are preparing tables
for human eyeballs, it is imperative that you step up and take control
of row order.

### Your turn

> How many countries have suffered more than 3,000 deaths so far and
> which three countries have recorded the highest death counts?

#### Answer

``` r
coronavirus_ttd %>%
  filter(death > 3000) %>% 
  arrange(-death)
```

### Your turn again

> 1.  Go back to our original dataset `coronavirus` and identify where
>     and when the highest death count in a single day was observed.
>     Hint: you can either use or `base::max` and `dplyr::arrange()`…
> 
> 2.  The first case was confirmed in the US on
>     [January 20 2020](https://www.nejm.org/doi/full/10.1056/NEJMoa2001191),
>     marking the earliest day included in this dataset. When was the
>     first confirmed case recorded in the Denmark?
> 
> 3.  Knit your RMarkdown file, and sync it to GitHub (pull, stage,
>     commit, push)

#### Answer (no peeking\!)

``` r
# Identifying the record with the highest death count
coronavirus %>% 
  filter(type == "death") %>% 
  arrange(-cases)

# We can also just identify the top hit 
coronavirus %>% 
  filter(type == "death") %>% 
  filter(cases == max(cases))

# The first recorded case in Denmark
coronavirus %>% 
  filter(Country.Region == "Denmark", cases > 0) %>% 
  arrange(date)
```

**Knit your RMarkdown file, and sync it to GitHub (pull, stage, commit,
push)**

<br>

## Extra exercises to do if you have time

Combine your new data wrangling skills with the ggplot skills to covered
last week to explore patterns in the coronavirus dataset. How have the
number of cases developed over time in different countries?
