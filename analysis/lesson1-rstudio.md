---
title: "Lesson 1: Introduction to R and RStudio"
output: 
  workflowr::wflow_html:
    keep_md: yes 
    toc: true
---

<p>
<button type="button" class="btn btn-default btn-workflowr btn-workflowr-report"
  data-toggle="collapse" data-target="#workflowr-report">
  <span class="glyphicon glyphicon-list" aria-hidden="true"></span>
  workflowr
  <span class="glyphicon glyphicon-exclamation-sign text-danger" aria-hidden="true"></span>
</button>
</p>

<div id="workflowr-report" class="collapse">
<ul class="nav nav-tabs">
  <li class="active"><a data-toggle="tab" href="#summary">Summary</a></li>
  <li><a data-toggle="tab" href="#checks">
  Checks <span class="glyphicon glyphicon-exclamation-sign text-danger" aria-hidden="true"></span>
  </a></li>
  <li><a data-toggle="tab" href="#versions">Past versions</a></li>
</ul>

<div class="tab-content">
<div id="summary" class="tab-pane fade in active">
  <p><strong>Last updated:</strong> 2020-09-15</p>
  <p><strong>Checks:</strong>
  <span class="glyphicon glyphicon-ok text-success" aria-hidden="true"></span>
  6
  <span class="glyphicon glyphicon-exclamation-sign text-danger" aria-hidden="true"></span>
  1
  </p>
  <p><strong>Knit directory:</strong>
  <code>NTRES6940-data-science/</code>
  <span class="glyphicon glyphicon-question-sign" aria-hidden="true"
  title="This is the local directory in which the code in this file was executed.">
  </span>
  </p>
  <p>
  This reproducible <a href="http://rmarkdown.rstudio.com">R Markdown</a>
  analysis was created with <a
  href="https://github.com/jdblischak/workflowr">workflowr</a> (version
  1.6.2). The <em>Checks</em> tab describes the
  reproducibility checks that were applied when the results were created.
  The <em>Past versions</em> tab lists the development history.
  </p>
<hr>
</div>
<div id="checks" class="tab-pane fade">
  <div class="panel-group" id="workflowr-checks">
  <div class="panel panel-default">
<div class="panel-heading">
<p class="panel-title">
<a data-toggle="collapse" data-parent="#workflowr-checks" href="#strongRMarkdownfilestronguncommittedchanges">
  <span class="glyphicon glyphicon-exclamation-sign text-danger" aria-hidden="true"></span>
  <strong>R Markdown file:</strong> uncommitted changes
</a>
</p>
</div>
<div id="strongRMarkdownfilestronguncommittedchanges" class="panel-collapse collapse">
<div class="panel-body">
  The R Markdown file has unstaged changes. 
To know which version of the R Markdown file created these
results, you'll want to first commit it to the Git repo. If
you're still working on the analysis, you can ignore this
warning. When you're finished, you can run
<code>wflow_publish</code> to commit the R Markdown file and
build the HTML.

</div>
</div>
</div>
<div class="panel panel-default">
<div class="panel-heading">
<p class="panel-title">
<a data-toggle="collapse" data-parent="#workflowr-checks" href="#strongEnvironmentstrongempty">
  <span class="glyphicon glyphicon-ok text-success" aria-hidden="true"></span>
  <strong>Environment:</strong> empty
</a>
</p>
</div>
<div id="strongEnvironmentstrongempty" class="panel-collapse collapse">
<div class="panel-body">
  
Great job! The global environment was empty. Objects defined in the global
environment can affect the analysis in your R Markdown file in unknown ways.
For reproduciblity it's best to always run the code in an empty environment.

</div>
</div>
</div>
<div class="panel panel-default">
<div class="panel-heading">
<p class="panel-title">
<a data-toggle="collapse" data-parent="#workflowr-checks" href="#strongSeedstrongcodesetseed20200914code">
  <span class="glyphicon glyphicon-ok text-success" aria-hidden="true"></span>
  <strong>Seed:</strong> <code>set.seed(20200914)</code>
</a>
</p>
</div>
<div id="strongSeedstrongcodesetseed20200914code" class="panel-collapse collapse">
<div class="panel-body">
  
The command <code>set.seed(20200914)</code> was run prior to running the code in the R Markdown file.
Setting a seed ensures that any results that rely on randomness, e.g.
subsampling or permutations, are reproducible.

</div>
</div>
</div>
<div class="panel panel-default">
<div class="panel-heading">
<p class="panel-title">
<a data-toggle="collapse" data-parent="#workflowr-checks" href="#strongSessioninformationstrongrecorded">
  <span class="glyphicon glyphicon-ok text-success" aria-hidden="true"></span>
  <strong>Session information:</strong> recorded
</a>
</p>
</div>
<div id="strongSessioninformationstrongrecorded" class="panel-collapse collapse">
<div class="panel-body">
  
Great job! Recording the operating system, R version, and package versions is
critical for reproducibility.

</div>
</div>
</div>
<div class="panel panel-default">
<div class="panel-heading">
<p class="panel-title">
<a data-toggle="collapse" data-parent="#workflowr-checks" href="#strongCachestrongnone">
  <span class="glyphicon glyphicon-ok text-success" aria-hidden="true"></span>
  <strong>Cache:</strong> none
</a>
</p>
</div>
<div id="strongCachestrongnone" class="panel-collapse collapse">
<div class="panel-body">
  
Nice! There were no cached chunks for this analysis, so you can be confident
that you successfully produced the results during this run.

</div>
</div>
</div>
<div class="panel panel-default">
<div class="panel-heading">
<p class="panel-title">
<a data-toggle="collapse" data-parent="#workflowr-checks" href="#strongFilepathsstrongrelative">
  <span class="glyphicon glyphicon-ok text-success" aria-hidden="true"></span>
  <strong>File paths:</strong> relative
</a>
</p>
</div>
<div id="strongFilepathsstrongrelative" class="panel-collapse collapse">
<div class="panel-body">
  
Great job! Using relative paths to the files within your workflowr project
makes it easier to run your code on other machines.

</div>
</div>
</div>
<div class="panel panel-default">
<div class="panel-heading">
<p class="panel-title">
<a data-toggle="collapse" data-parent="#workflowr-checks" href="#strongRepositoryversionstrongahrefhttpsgithubcomnt246NTRES6940datasciencetree800c27e13291cb78d3742062d165652d5646d70atargetblank800c27ea">
  <span class="glyphicon glyphicon-ok text-success" aria-hidden="true"></span>
  <strong>Repository version:</strong> <a href="https://github.com/nt246/NTRES6940-data-science/tree/800c27e13291cb78d3742062d165652d5646d70a" target="_blank">800c27e</a>
</a>
</p>
</div>
<div id="strongRepositoryversionstrongahrefhttpsgithubcomnt246NTRES6940datasciencetree800c27e13291cb78d3742062d165652d5646d70atargetblank800c27ea" class="panel-collapse collapse">
<div class="panel-body">
  
<p>
Great! You are using Git for version control. Tracking code development and
connecting the code version to the results is critical for reproducibility.
</p>

<p>
The results in this page were generated with repository version <a href="https://github.com/nt246/NTRES6940-data-science/tree/800c27e13291cb78d3742062d165652d5646d70a" target="_blank">800c27e</a>.
See the <em>Past versions</em> tab to see a history of the changes made to the
R Markdown and HTML files.
</p>

<p>
Note that you need to be careful to ensure that all relevant files for the
analysis have been committed to Git prior to generating the results (you can
use <code>wflow_publish</code> or <code>wflow_git_commit</code>). workflowr only
checks the R Markdown file, but you know if there are other scripts or data
files that it depends on. Below is the status of the Git repository when the
results were generated:
</p>

<pre><code>
Ignored files:
	Ignored:    .DS_Store
	Ignored:    .Rhistory
	Ignored:    .Rproj.user/
	Ignored:    analysis/.DS_Store
	Ignored:    img/.DS_Store
	Ignored:    lecture_notes/.DS_Store

Unstaged changes:
	Modified:   analysis/assignments.Rmd
	Modified:   analysis/installation.Rmd
	Modified:   analysis/lesson1-rstudio.Rmd
	Modified:   analysis/lesson2-rmarkdown-github.Rmd
	Modified:   analysis/syllabus.Rmd

</code></pre>

<p>
Note that any generated files, e.g. HTML, png, CSS, etc., are not included in
this status report because it is ok for generated content to have uncommitted
changes.
</p>

</div>
</div>
</div>
</div>
<hr>
</div>
<div id="versions" class="tab-pane fade">
  
<p>
These are the previous versions of the repository in which changes were made
to the R Markdown (<code>analysis/lesson1-rstudio.Rmd</code>) and HTML (<code>docs/lesson1-rstudio.html</code>)
files. If you've configured a remote Git repository (see
<code>?wflow_git_remote</code>), click on the hyperlinks in the table below to
view the files as they were in that past version.
</p>
<div class="table-responsive">
<table class="table table-condensed table-hover">
<thead>
<tr>
<th>File</th>
<th>Version</th>
<th>Author</th>
<th>Date</th>
<th>Message</th>
</tr>
</thead>
<tbody>
<tr>
<td>Rmd</td>
<td><a href="https://github.com/nt246/NTRES6940-data-science/blob/df14e2eefb935be3a596bdf453d36362a03944ad/analysis/lesson1-rstudio.Rmd" target="_blank">df14e2e</a></td>
<td>nt246</td>
<td>2020-09-14</td>
<td>Fixed typos</td>
</tr>
<tr>
<td>html</td>
<td><a href="https://rawcdn.githack.com/nt246/NTRES6940-data-science/df14e2eefb935be3a596bdf453d36362a03944ad/docs/lesson1-rstudio.html" target="_blank">df14e2e</a></td>
<td>nt246</td>
<td>2020-09-14</td>
<td>Fixed typos</td>
</tr>
<tr>
<td>Rmd</td>
<td><a href="https://github.com/nt246/NTRES6940-data-science/blob/fb60e71792eb0b523dbebae4a5af60394eedb616/analysis/lesson1-rstudio.Rmd" target="_blank">fb60e71</a></td>
<td>makopyan</td>
<td>2020-09-14</td>
<td>pic</td>
</tr>
<tr>
<td>html</td>
<td><a href="https://rawcdn.githack.com/nt246/NTRES6940-data-science/fb60e71792eb0b523dbebae4a5af60394eedb616/docs/lesson1-rstudio.html" target="_blank">fb60e71</a></td>
<td>makopyan</td>
<td>2020-09-14</td>
<td>pic</td>
</tr>
<tr>
<td>html</td>
<td><a href="https://rawcdn.githack.com/nt246/NTRES6940-data-science/d92f49aee60e5ba9a1f36791e6d726cc0ec49a09/docs/lesson1-rstudio.html" target="_blank">d92f49a</a></td>
<td>nt246</td>
<td>2020-09-14</td>
<td>Formatting updates</td>
</tr>
<tr>
<td>Rmd</td>
<td><a href="https://github.com/nt246/NTRES6940-data-science/blob/97ae673723e8a20cc176e3506cbcba40dfc8a45f/analysis/lesson1-rstudio.Rmd" target="_blank">97ae673</a></td>
<td>nt246</td>
<td>2020-09-14</td>
<td>Formatting updates</td>
</tr>
<tr>
<td>Rmd</td>
<td><a href="https://github.com/nt246/NTRES6940-data-science/blob/df5d6f66efa26735564cf4fc7dcc1829dde7169a/analysis/lesson1-rstudio.Rmd" target="_blank">df5d6f6</a></td>
<td>nt246</td>
<td>2020-09-14</td>
<td>Formatting updates</td>
</tr>
<tr>
<td>html</td>
<td><a href="https://rawcdn.githack.com/nt246/NTRES6940-data-science/df5d6f66efa26735564cf4fc7dcc1829dde7169a/docs/lesson1-rstudio.html" target="_blank">df5d6f6</a></td>
<td>nt246</td>
<td>2020-09-14</td>
<td>Formatting updates</td>
</tr>
<tr>
<td>html</td>
<td><a href="https://rawcdn.githack.com/nt246/NTRES6940-data-science/09d743cc026e5eb977d1f0b352fcc4390d56f07a/docs/lesson1-rstudio.html" target="_blank">09d743c</a></td>
<td>nt246</td>
<td>2020-09-14</td>
<td>Replaced .md file</td>
</tr>
<tr>
<td>html</td>
<td><a href="https://rawcdn.githack.com/nt246/NTRES6940-data-science/54dfa3de7320ec5f0e7994eead22150d6baa21ae/docs/lesson1-rstudio.html" target="_blank">54dfa3d</a></td>
<td>nt246</td>
<td>2020-09-14</td>
<td>Fixed merging</td>
</tr>
<tr>
<td>Rmd</td>
<td><a href="https://github.com/nt246/NTRES6940-data-science/blob/182ff2b64ac4c091fb6759ee2f0311a126ed31e0/analysis/lesson1-rstudio.Rmd" target="_blank">182ff2b</a></td>
<td>nt246</td>
<td>2020-09-14</td>
<td>Fixed header</td>
</tr>
<tr>
<td>Rmd</td>
<td><a href="https://github.com/nt246/NTRES6940-data-science/blob/8eddb1b9798d5591bd31eb4a14eadb87db68ab77/analysis/lesson1-rstudio.Rmd" target="_blank">8eddb1b</a></td>
<td>nt246</td>
<td>2020-09-14</td>
<td>Updated links</td>
</tr>
<tr>
<td>html</td>
<td><a href="https://rawcdn.githack.com/nt246/NTRES6940-data-science/8eddb1b9798d5591bd31eb4a14eadb87db68ab77/docs/lesson1-rstudio.html" target="_blank">8eddb1b</a></td>
<td>nt246</td>
<td>2020-09-14</td>
<td>Updated links</td>
</tr>
<tr>
<td>Rmd</td>
<td><a href="https://github.com/nt246/NTRES6940-data-science/blob/db1f0b77be53cfa5ed00fbe753c826d086b74ff6/analysis/lesson1-rstudio.Rmd" target="_blank">db1f0b7</a></td>
<td>makopyan</td>
<td>2020-09-14</td>
<td>wflow</td>
</tr>
<tr>
<td>html</td>
<td><a href="https://rawcdn.githack.com/nt246/NTRES6940-data-science/db1f0b77be53cfa5ed00fbe753c826d086b74ff6/docs/lesson1-rstudio.html" target="_blank">db1f0b7</a></td>
<td>makopyan</td>
<td>2020-09-14</td>
<td>wflow</td>
</tr>
<tr>
<td>Rmd</td>
<td><a href="https://github.com/nt246/NTRES6940-data-science/blob/ffefa482eee25e5c1effcc2fadc6254f06bfe94b/analysis/lesson1-rstudio.Rmd" target="_blank">ffefa48</a></td>
<td>makopyan</td>
<td>2020-09-14</td>
<td>cleanup</td>
</tr>
<tr>
<td>html</td>
<td><a href="https://rawcdn.githack.com/nt246/NTRES6940-data-science/ffefa482eee25e5c1effcc2fadc6254f06bfe94b/docs/lesson1-rstudio.html" target="_blank">ffefa48</a></td>
<td>makopyan</td>
<td>2020-09-14</td>
<td>cleanup</td>
</tr>
<tr>
<td>html</td>
<td><a href="https://rawcdn.githack.com/nt246/NTRES6940-data-science/b05308c1c2cca73619f3d0a6f9525f745da91d3f/docs/lesson1-rstudio.html" target="_blank">b05308c</a></td>
<td>makopyan</td>
<td>2020-09-14</td>
<td>lesson1</td>
</tr>
<tr>
<td>html</td>
<td><a href="https://rawcdn.githack.com/nt246/NTRES6940-data-science/35664d2ae5c3157a7e8ce4277eb30b438f651d4a/docs/lesson1-rstudio.html" target="_blank">35664d2</a></td>
<td>makopyan</td>
<td>2020-09-14</td>
<td>lesson1</td>
</tr>
</tbody>
</table>
</div>

<hr>
</div>
</div>
</div>






  


<br>

## Overview
Welcome to the course. Please review the [introductory slides](https://github.com/nt246/NTRES6940-data-science/blob/master/slides/Slides_Class1_2020_0914.pdf) describing the focus, content, and goal of this course.

We will not have time to provide a comprehensive introduction to R and RStudio. Today, we will focus on highlighting a few key functionalities and tips that will be important for this course and get us all on the same page.

<br>

## Acknowledgements and resources

Most of today's lesson has been borrowed (with permission) from the [Ocean Health Index Data Science Training](http://ohi-science.org/data-science-training/)

Other useful resources to check out include the following: 

   - [Jenny Bryan's STAT545 Chapter 2 R basics and workflows](https://stat545.com/r-basics.html) 
   - [R Swirl interactive lessons](https://swirlstats.com/) 
   - [Data Carpentry's Introduction to R for Ecologists](https://datacarpentry.org/R-ecology-lesson/) 

<br>

RStudio has great resources about its IDE (IDE stands for integrated development environment): 

   - [Webinars](https://www.rstudio.com/resources/webinars/) 
   - [Cheatsheets](https://www.rstudio.com/resources/cheatsheets/)


<br>

## Orientation: R and RStudio

In this course, we will be using R with RStudio. R is the base statistical computing environment. RStudio is an Interactive Development Environment (IDE) that makes it much easier to use R by helping us organize our work and do things like auto-complete, syntax highlighting etc.

After you install R and RStudio, you only need to open RStudio.

When you open RStudio, it will look like this:

![](assets/RStudio_IDE.png)

Notice the default panes:

  * Console (entire left)
  * Environment/History (tabbed in upper right)
  * Files/Plots/Packages/Help (tabbed in lower right)

FYI: you can change the default location of the panes, among many other things: [Customizing RStudio](https://support.rstudio.com/hc/en-us/articles/200549016-Customizing-RStudio). 


An important first question: **where are we?** 

If you've have opened RStudio for the first time, you'll be in your Home directory. This is noted by the `~/` at the top of the console. You can see too that the Files pane in the lower right shows what is in the Home directory where you are. You can navigate around within that Files pane and explore, but note that you won't change where you are: even as you click through you'll still be Home: `~/`. 

![](assets/RStudio_IDE_homedir.png)


OK let's go into the Console, where we interact with the live R process.

Make an assignment and then inspect the object you created by typing its name on its own.


```r
x <- 3 * 4
x
```

```
[1] 12
```
In my head I hear, e.g., "x gets 12".

All R statements where you create objects -- "assignments" -- have this form: `objectName <- value`.  

I'll write it in the console with a hashtag `#`, which is the way R comments so it won't be evaluated. 

```r
## objectName <- value
## This is also how you write notes in your code to explain what you are doing.
```

Object names cannot start with a digit and cannot contain certain other characters such as a comma or a space. You will be wise to adopt a [convention for demarcating words](http://en.wikipedia.org/wiki/Snake_case) in names.


```r
# i_use_snake_case
# other.people.use.periods
# evenOthersUseCamelCase
```

<br>

## Shortcuts and autocomplete

Make an assignment

```r
this_is_a_really_long_name <- 2.5
```

To inspect this variable, instead of typing it, we can press the up arrow key and call your command history, with the most recent commands first. Let's do that, and then delete the assignment: 


```r
this_is_a_really_long_name
```

```
[1] 2.5
```

Another way to inspect this variable is to begin typing `this_`...and RStudio will automatically have suggested completions for you that you can select by hitting the tab key, then press return. 

<br>

> Shortcuts 
You will make lots of assignments and the operator `<-` is a pain to type. Don't be lazy and use `=`, although it would work, because it will just sow confusion later. Instead, utilize **RStudio's keyboard shortcut: Alt + - (the minus sign)**.
Notice that RStudio automagically surrounds `<-` with spaces, which demonstrates a useful code formatting practice. Code is miserable to read on a good day. Give your eyes a break and use spaces.
RStudio offers many handy [keyboard shortcuts](https://support.rstudio.com/hc/en-us/articles/200711853-Keyboard-Shortcuts). Also, Alt+Shift+K brings up a keyboard shortcut reference card.
> My most common shortcuts include command-Z (undo), and combinations of arrow keys in combination with shift/option/command (moving quickly up, down, sideways, with or without highlighting.

<br>

## Error messages are your friends

Implicit contract with the computer / scripting language: Computer will do tedious computation for you. In return, you will be completely precise in your instructions. Typos matter. Case matters. Pay attention to how you type.

Remember that this is a language, not unsimilar to English! There are times you aren't understood -- it's going to happen. There are different ways this can happen. Sometimes you'll get an error. This is like someone saying 'What?' or 'Pardon'? Error messages can also be more useful, like when they say 'I didn't understand what you said, I was expecting you to say blah'. That is a great type of error message. Error messages are your friend. Google them (copy-and-paste!) to figure out what they mean. 

<br>

<!--html_preserve--><img src="assets/practicalDev_googleErrorMessage.jpg" width="400"/><!--/html_preserve-->

<br>

And also know that there are errors that can creep in more subtly, when you are giving information that is understood, but not in the way you meant. Like if I you are telling your European friend about a football game and she hears it but silently interprets it in a very different way (thinking football means soccer). This can leave you thinking you've gotten something across that the listener (or R) might silently interpret very differently. And as you continue telling your story the listener gets more and more confused... Clear communication is critical when you code: write clean, well documented code and check your work as you go to minimize these circumstances!
     
<br>

## R functions, help pages
     
R has a mind-blowing collection of built-in functions that are used with the same syntax: function name with parentheses around what the function needs to do what it is supposed to do. `function_name(argument1 = value1, argument2 = value2, ...)`. When you see this syntax, we say we are "calling the function".
   
Let's try using `seq()` which makes regular sequences of numbers and, while we're at it, demo more helpful features of RStudio.
   
Type `se` and hit TAB. A pop up shows you possible completions. Specify `seq()` by typing more to disambiguate or using the up/down arrows to select. Notice the floating tool-tip-type help that pops up, reminding you of a function's arguments. If you want even more help, press F1 as directed to get the full documentation in the help tab of the lower right pane. 

Type the arguments `1, 10` and hit return. 

```r
seq(1, 10)
```

```
 [1]  1  2  3  4  5  6  7  8  9 10
```

We could probably infer that the `seq()` function makes a sequence, but let's learn for sure. Type (and you can autocomplete) and let's explore the help page:


```r
?seq 
help(seq) # same as ?seq
```

The help page tells the name of the package in the top left, and broken down into sections:

 - Description: An extended description of what the function does.
 - Usage: The arguments of the function and their default values.
 - Arguments: An explanation of the data each argument is expecting.
 - Details: Any important details to be aware of.
 - Value: The data the function returns.
 - See Also: Any related functions you might find useful.
 - Examples: Some examples for how to use the function.


```r
seq(from = 1, to = 10) # same as seq(1, 10); R assumes by position
```

```
 [1]  1  2  3  4  5  6  7  8  9 10
```

```r
seq(from = 1, to = 10, by = 2)
```

```
[1] 1 3 5 7 9
```

The above also demonstrates something about how R resolves function arguments. You can always specify in `name = value` form. But if you do not, R attempts to resolve by position. So above, it is assumed that we want a sequence `from = 1` that goes `to = 10`. Since we didn't specify step size, the default value of `by` in the function definition is used, which ends up being 1 in this case. For functions I call often, I might use this resolve by position for the first
   argument or maybe the first two. After that, I always use `name = value`.
   
The examples from the help pages can be copy-pasted into the console for you to understand what's going on. Remember we were talking about expecting there to be a function for something you want to do? Let's try it. 
   
### Your turn
   
> Exercise: Talk to your neighbor(s) and look up the help file for a function that you know or expect to exist. Here are some ideas: `?getwd()`, `?plot()`,  `min()`, `max()`, `?mean()`, `?log()`).
And there's also help for when you only sort of remember the function name: double-question mark:

```r
??install 
```


Not all functions have (or require) arguments:

```r
date()
```

```
[1] "Tue Sep 15 12:23:55 2020"
```

<br>

## Packages

So far we've been using a couple functions from base R, such as `seq()` and `date()`. But, one of the amazing things about R is that a vast user community is always creating new functions and packages that expand R's capabilities. In R, the fundamental unit of shareable code is the package. A package bundles together code, data, documentation, and tests, and is easy to share with others. They increase the power of R by improving existing base R functionalities, or by adding new ones. 

The traditional place to download packages is from CRAN, the [Comprehensive R Archive Network](https://cran.r-project.org/), which is where you downloaded R. You can also install packages from GitHub, which we'll do tomorrow.

You don't need to go to CRAN's website to install packages, this can be accomplished within R using the command `install.packages("package-name-in-quotes")`. Let's install a small, fun package `praise`. You need to use quotes around the package name.:

```
install.packages("praise")
```

Now we've installed the package, but we need to tell R that we are going to use the functions within the `praise` package. We do this by using the function `library()`.

**What’s the difference between a package and a library?**  
  Sometimes there is a confusion between a package and a library, and you can find people calling “libraries” to packages.

Please don’t get confused: `library()` is the command used to load a package, and it refers to the place where the package is contained, usually a folder on your computer, while a package is the collection of functions bundled conveniently.


```r
library(praise)
```

Now that we've loaded the `praise` package, we can use the single function in the package, `praise()`, which returns a randomized praise to make you feel better.


```r
praise()
```

```
[1] "You are sensational!"
```

<br>

## Clearing the environment
Now look at the objects in your environment (workspace) -- in the upper right pane. The workspace is where user-defined objects accumulate. 

![](assets/RStudio_IDE_env.png)

You can also get a listing of these objects with a few different R commands:


```r
objects()
```

```
[1] "this_is_a_really_long_name" "x"                         
```

```r
ls()
```

```
[1] "this_is_a_really_long_name" "x"                         
```

If you want to remove the object named `weight_kg`, you can do this:


```r
rm(weight_kg)
```

```
Warning in rm(weight_kg): object 'weight_kg' not found
```

To remove everything:


```r
rm(list = ls())
```

or click the broom in RStudio's Environment pane. 

But this command is problematic -see [Jenny Bryan's explanation](https://rstats.wtf/save-source.html#rm-list-ls).

For reproducibility, it is critical that you delete your objects and restart your R session frequently. You don't want your whole analysis to only work in whatever way you've been working right now — you need it to work next week, after you upgrade your operating system, etc. Restarting your R session will help you identify and account for anything you need for your analysis. 

We will keep coming back to this theme but let's restart our R session together: Go to the top menus: Session > Restart R. 

### Your turn

> Exercise: Clear your workspace, then create a few new variables. Create a variable that is the mean of a sequence of 1-20. What's a good name for your variable? Does it matter what your 'by' argument is? Why?

<br>

Highly recommended: [Don’t save your workspace when you quit RStudio](https://www.r-bloggers.com/using-r-dont-save-your-workspace/). Make this a default:
* Go to “RStudio” -> “Preferences…” -> “General”
* Uncheck “restore .RData into workspace on startup”
* Select: “Save workspace to RData on exit:” Never

![](assets/rstudio-workspace.png)

<br>

## Home directory, relative vs. absolute paths and RStudio projects

See [sections 8.2-8.4 in Grolemund and Wickham's R for Data Science](https://r4ds.had.co.nz/workflow-projects.html#where-does-your-analysis-live)

Additional tips on RStudio projects [here](https://support.rstudio.com/hc/en-us/articles/200526207-Using-Projects)

On Wednesday, we will set up an RStudio project for you to work in during this course (we're waiting until Wednesday because we want to integrate it with GitHub from the get-go).

<br>

## Saving your code in scripts

See [Chapter 6 in Grolemund and Wickham's R for Data Science](https://r4ds.had.co.nz/workflow-projects.html#where-does-your-analysis-live)

<br>
<p>
<button type="button" class="btn btn-default btn-workflowr btn-workflowr-sessioninfo"
  data-toggle="collapse" data-target="#workflowr-sessioninfo"
  style = "display: block;">
  <span class="glyphicon glyphicon-wrench" aria-hidden="true"></span>
  Session information
</button>
</p>

<div id="workflowr-sessioninfo" class="collapse">

```r
sessionInfo()
```

```
R version 3.6.1 (2019-07-05)
Platform: x86_64-apple-darwin15.6.0 (64-bit)
Running under: macOS High Sierra 10.13.6

Matrix products: default
BLAS:   /Library/Frameworks/R.framework/Versions/3.6/Resources/lib/libRblas.0.dylib
LAPACK: /Library/Frameworks/R.framework/Versions/3.6/Resources/lib/libRlapack.dylib

locale:
[1] en_US.UTF-8/en_US.UTF-8/en_US.UTF-8/C/en_US.UTF-8/en_US.UTF-8

attached base packages:
[1] stats     graphics  grDevices utils     datasets  methods   base     

other attached packages:
[1] praise_1.0.0

loaded via a namespace (and not attached):
 [1] workflowr_1.6.2 Rcpp_1.0.4.6    rprojroot_1.3-2 digest_0.6.23  
 [5] later_1.0.0     R6_2.4.1        backports_1.1.5 git2r_0.26.1   
 [9] magrittr_1.5    evaluate_0.14   stringi_1.4.3   rlang_0.4.4    
[13] fs_1.3.1        promises_1.1.0  whisker_0.4     rmarkdown_1.18 
[17] tools_3.6.1     stringr_1.4.0   glue_1.3.1      httpuv_1.5.2   
[21] xfun_0.11       yaml_2.2.0      compiler_3.6.1  htmltools_0.4.0
[25] knitr_1.26     
```
</div>
