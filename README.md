### NTRES 6940, Lec 003

# Collaborative and Reproducible Data Science in R

### Cornell University, Spring 2020

<br>

### Meeting times

Mondays and Wednesdays 4.20 - 5.40pm in Fernow G24 for 7 weeks (March 2 - May 4 2020)\
**OPTIONAL**: "Hacky hour" (meetup to work on problem sets or your own projects) Fridays 3-5pm in Bradfield 105\
<br>
**NOTE: From April 6 onwards all course activities will take place online (details provided in the course Slack channel)**

### Instructor

Assistant Professor Nina Overgaard Therkildsen (nt246@cornell.edu)\
Office hours: By appointment

### TA

Nicolas Lou (rl683@cornell.edu)\
Office hours: Fridays 3-5pm and by appointment

### Grading

S/U (2 credits)

### Course description

As datasets grow larger and more complex across all areas of science, computational skills are increasingly in high demand. This course introduces a series of practical tools that enable researchers to spend less time wrestling with software or repeating error-prone manual data processing and more time getting research done in efficient and transparent ways that facilitate collaboration and reproducibility. We will work in R/RStudio, primarily with the tidyverse packages and with Git and GitHub integration. Topics covered include 1) tidy data formatting, 2) rearrangement, filtering, exploration, and visualization of complex datasets, 3) basic programming for building and automating custom tools, 4) tracking the history of file changes (version control) with Git and GitHub, 5) strategies for effective collaboration on data processing pipelines, and 6) using R Markdown to combine text, equations, code, tables, and figures into reports, websites, and presentations. The course emphasizes practical skill development and will be structured around hands-on (the keyboard) learning.

### Learning outcomes

By the end of this course, students will be able to:

* Describe strategies for ensuring that their data analysis is reproducible
* Demonstrate best practices for coding and project-oriented workflows in RStudio
* Import and clean messy data files using a variety of packages and functions in R 
* Subset, reorganize, and merge diverse datasets in R
* Effectively explore and visualize patterns in complex datasets with ggplot in R
* Write simple functions/programs and data analysis pipelines in R
* Automate repeated analysis tasks in R
* Track the history of file changes (version control) and collaborate effectively on scripts with others with Git and GitHub
* Use R Markdown to combine text, equations, code, tables, and figures into reports, websites, and presentations


### Prerequisites
A basic working knowledge of R will be helpful, but no prior experience with the tidyverse packages or with Git, GitHub, or R Markdown is assumed. If you have never worked in R before, we recommend working through one or more of the following tutorials before the course: 

+ [Jenny Bryan's STAT545 Chapter 2 R basics and workflows](https://stat545.com/r-basics.html)
+ [R Swirl interactive lessons](https://swirlstats.com/)
+ [Data Carpentry's Introduction to R for Ecologists](https://datacarpentry.org/R-ecology-lesson/)


### Course format
The two weekly lectures will introduce new concepts and provide opportunities to practice through hands-on exercises. To participate effectively, you must have completed the assigned readings prior to class. Each Wednesday, we will assign a problem set that applies the concepts covered in class in a new context to reinforce your learning. We offer an optional Friday afternoon "hacky hour" session for working on these problem sets in groups and with TA support. The problem sets are due the following Wednesday at 10pm. 


### Evaluation
It takes practice to acquire and internalize data science skills, and what you get out of this course will be proportional to the effort you put in. Practice as much as you can. To pass, students are expected to attend all lectures, participate actively during class, and submit at least 5 of the 6 problem sets with demonstrated effort to complete all questions. If you are unable to make a lecture or can not meet a problem set deadline, please email the instructor beforehand.  


### Course materials
All assigned readings are freely available online and will be linked to from the course website. We will draw from a variety of sources, primarily [Grolemund and Wickham's R For Data Science](https://r4ds.had.co.nz/) and the [STAT545 course developed by Jenny Bryan](https://stat545.com/).  

All students will need to bring a laptop to each session. Students who do not have their own laptop can arrange to borrow one from the Mann Library.

Please follow the instructions [here](https://github.com/nt246/NTRES6940-data-science/blob/master/misc/installation_guide.md) to install the software we will need **prior to the first class**.


### Code of conduct
We are dedicated to providing a welcoming and supportive environment for everyone, regardless of background, identity and prior experience level. Everyone in this course will be coming from a different place with different experiences and expectations. We will not tolerate any form of language or behavior used to exclude, intimidate, or cause discomfort. This applies to all course participants (instructor, students, guests). In order to foster a positive and professional learning environment, we encourage the following kinds of behaviors:

* Use welcoming and inclusive language
* Be respectful of different viewpoints and experiences
* Gracefully accept constructive criticism
* Show courtesy and respect towards others
* Help each other - you may well learn something or reinforce your own skills in the process



### Accommodations for students with disabilities
In compliance with the Cornell University policy and equal access laws, we are available to discuss appropriate academic accommodations that may be required for student with disabilities. Requests for academic accommodations are to be made during the first two weeks of the course, except for unusual circumstances, so arrangements can be made. Students are encouraged to register with Student Disability Services to verify their eligibility for appropriate accommodations.

### Tentative schedule (subject to adjustment) - All sessions from April 6 onwards will be online


Class#  |  Date  |  Topic  | Readings |
| :--: | :-------: |:-- | :--:|
1  |  March 2 (Mon) |  Intro to the course and R/RStudio  |  
2  |  March 4 (Wed)  |  Markdown and GitHub  | [Link](https://github.com/nt246/NTRES6940-data-science/blob/master/lecture_notes/lesson2-rmarkdown-github.md) |
3  |  March 9 (Mon)  |  The Git workflow (version control)  | [Link](https://github.com/nt246/NTRES6940-data-science/blob/master/lecture_notes/lesson3-version-control.md)  |
4  |  March 11 (Wed)  |  Plotting with ggplot part 1  | [Link](https://github.com/nt246/NTRES6940-data-science/blob/master/lecture_notes/lesson4-ggplot-part1.md) |
-- |  March 16 (Mon)  |  CANCELLED |
-- |  March 18 (Wed)  |  CANCELLED |
-- |  March 23 (Mon)  |  CANCELLED |
-- |  March 25 (Wed)  |  CANCELLED |
-- |  March 30 (Mon)  |  SPRING BREAK  |
-- |  April 1 (Wed)  |  SPRING BREAK  |
5 |  April 6 (Mon)  |  Data wrangling part 1 (dplyr::filter, mutate, select, arrange)  | [Link](https://github.com/nt246/NTRES6940-data-science/blob/master/lecture_notes/lesson5-data-wrangling1.md) |
6  |  April 8 (Wed)  |  Data wrangling part 2 (dplyr::summarize, group_by)  | [Link](https://github.com/nt246/NTRES6940-data-science/blob/master/lecture_notes/lesson6-data-wrangling2.md) |
7  |  April 13 (Mon)  |  Plotting with ggplot part 2 + good coding practices  | [Link](https://github.com/nt246/NTRES6940-data-science/blob/master/lecture_notes/lesson7-ggplot-part2.md)
8  |  April 15 (Wed)  |  Tidy data (what is tidy data and how to handle untidy data) + file I/O and tibbles  | [Link](https://github.com/nt246/NTRES6940-data-science/blob/master/lecture_notes/lesson8-tidy-data.md)
9  |  April 20 (Mon)  |  Relational data (join functions) and factors  |  [Link](https://github.com/nt246/NTRES6940-data-science/blob/master/lecture_notes/lesson9-relational-data.md)  |
10  |  April 22 (Wed)  |  Collaborating with GitHub  |  [Link](https://github.com/nt246/NTRES6940-data-science/blob/master/lecture_notes/lesson10-collaboration.md)  |
11  | April 27 (Mon)  |  Collaborating with GitHub - continued   |  [Link](https://github.com/nt246/NTRES6940-data-science/blob/master/lecture_notes/lesson10-collaboration.md)  |
12  | April 29 (Wed)  |  Iteration (for loops)  |  [Link](https://github.com/nt246/NTRES6940-data-science/blob/master/lecture_notes/lesson12-for-loops.md)
13  |  May 4 (Mon)  |  Review and discussion of good practices for reproducible workflows  |
&nbsp; | &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; | &nbsp; |
