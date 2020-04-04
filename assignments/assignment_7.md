Assignment 7: Iteration using map functions and for loops
================

<br>

This homework is due by **10pm on Wednesday 05/13/20**.

Use the R markdown template given to you to generate your own html output, and have all your code embedded within the file. Please only show your **code** and **plots** in the html file, and **use R Markdown functionalities to hide messages and warnings when needed**. (Suggestion: messages and warnings can often be informative and important, so please examine them carefully and only turn them off when you finish the exercise).

Remember to submit a knitted html file rather than the .Rmd version. Please **rename your knitted html file** in the format of "Homework9\_YourName.html" and upload it through Blackboard.

The goal of this homework is to review and practice the programming skills that we have recently learned. All exercises were modified (with permission) from the Data Carpentry (<https://datacarpentry.org/>) and from Hadley Wickham's book [Advanced R](http://adv-r.had.co.nz/).

<br>

First, load the required packages.

``` r
library(tidyverse)
```

Question 1
==========

The length of an organism is typically strongly correlated with its body mass. This is useful because it allows us to estimate the mass of an organism even if we only know its length. This relationship generally takes the form: `Mass = a * Length^b`, where the parameters a and b vary among groups. This allometric approach is regularly used to estimate the mass of dinosaurs since we cannot weigh something that is only preserved as bones.

The following function estimates the mass of an organism in kg based on its length in meters for a particular set of parameter values, those for species in the *Theropoda* suborder (where `a` has been estimated as `0.73` and `b` has been estimated as `3.63`; Seebacher 2001).

``` r
get_mass_from_length_theropoda <- function(length){
  mass <- 0.73 * length ** 3.63
  return(mass)
}
```

<br>

**1.1** Add a comment to this function so that you know what it does.

``` r
get_mass_from_length_theropoda <- function(length){
  mass <- 0.73 * length ** 3.63
  return(mass)
}
```

**1.2** Use this function to print out the mass of a *Spinosaurus* that is `16` m long based on its reassembled skeleton. *Spinosaurus* is a predator that is bigger, and therefore, by definition, cooler, than that stupid *Tyrannosaurus* that everyone likes so much.

``` r
#
```

<br>

**1.3** Create a new version of this function called `get_mass_from_length` that estimates the mass of an organism in kg based on its length in meters by taking length, a, and b as parameters. To be clear we want to pass the function all 3 values that it needs to estimate a mass as parameters. This makes it much easier to reuse for all of the non-theropod species. Use this new function to estimate the mass of a Sauropoda (`a = 214.44`, `b = 1.46`) that is `26` m long.

``` r
#
```

<br>

**1.4** The following vector contains the length of 40 animals in the *Theropoda* suborder. Use the `get_mass_from_length_theropoda` function in combination with an appropriate map function to estimate the mass of each of these animals.

``` r
theropoda_lengths <- c(17.8013631070471, 20.3764452071665, 14.0743486294308, 25.65782386974, 26.0952008049675, 20.3111541103134, 17.5663244372533, 11.2563431277577, 20.081903202614, 18.6071626441984, 18.0991894513166, 23.0659685685892, 20.5798853467837, 25.6179254233558, 24.3714331573996, 26.2847248252537, 25.4753783544473, 20.4642089867304, 16.0738256364701, 20.3494171706583, 19.854399305869, 17.7889814608919, 14.8016421998303, 19.6840911485379, 19.4685885050906, 24.4807784966691, 13.3359960054899, 21.5065994598917, 18.4640304608411, 19.5861532398676, 27.084751999756, 18.9609366301798, 22.4829168046521, 11.7325716149514, 18.3758846100456, 15.537504851634, 13.4848751773738, 7.68561192214935, 25.5963348603783, 16.588285389794)
```

``` r
#
```

<br>

**1.5**

It turns out that the 40 animals in the last question are not in the *Theropoda* suborder afterall, and they all have their species specific `a` and `b` values, as the following. Use the `get_mass_from_length` function in combination with an appropriate map function to estimate the mass of these animals again.

``` r
a_values <- c(0.759, 0.751, 0.74, 0.746, 0.759, 0.751, 0.749, 0.751, 0.738, 0.768, 0.736, 0.749, 0.746, 0.744, 0.749, 0.751, 0.744, 0.754, 0.774, 0.751, 0.763, 0.749, 0.741, 0.754, 0.746, 0.755, 0.764, 0.758, 0.76, 0.748, 0.745, 0.756, 0.739, 0.733, 0.757, 0.747, 0.741, 0.752, 0.752, 0.748)

b_values <- c(3.627, 3.633, 3.626, 3.633, 3.627, 3.629, 3.632, 3.628, 3.633, 3.627, 3.621, 3.63, 3.631, 3.632, 3.628, 3.626, 3.639, 3.626, 3.635, 3.629, 3.642, 3.632, 3.633, 3.629, 3.62, 3.619, 3.638, 3.627, 3.621, 3.628, 3.628, 3.635, 3.624, 3.621, 3.621, 3.632, 3.627, 3.624, 3.634, 3.621)
```

``` r
#
```

<br>

Question 2
==========

The UHURU experiment in Kenya has conducted a survey of Acacia and other tree species in ungulate exposure treatments. Data for the tree data is available in a tab delimited format. Each of the individuals surveyed were measured for tree height (`HEIGHT`) and canopy size in two directions (`AXIS_1` and `AXIS_2`). Read these data in using the following code (you can ignore the warning message):

``` r
tree_data <- read_tsv("http://www.esapubs.org/archive/ecol/E095/064/TREE_SURVEYS.txt", na = c("dead", "missing", "MISSING", "NA", "?", "3.3."))
```

You want to estimate the crown volumes for the different species and have developed equations for species in the Acacia genus: `volume = 0.16 * HEIGHT^0.8 * pi * AXIS_1 * AXIS_2`

and the Balanites genus: `volume = 1.2 * HEIGHT^0.26 * pi * AXIS_1 * AXIS_2`

For all other genera you’ll use a general equation developed for trees: `volume = 0.5 * HEIGHT^0.6 * pi * AXIS_1 * AXIS_2`

<br>

**2.1** Write a function called `tree_volume_calc` that calculates the canopy volume for the Acacia species in the dataset. To do so, use an if statement in combination with the `str_detect` function from the stringr R package. The code `str_detect(SPECIES, "Acacia")` will return `TRUE` if the string stored in this variable contains the word “Acacia” and `FALSE` if it does not. This function will have to take the following arguments as input: `SPECIES`, `HEIGHT`, `AXIS_1`, `AXIS_2`. Then use this function to calculate the canopy volume for:

-   an `"Acacia_brevispica"` with a `HEIGHT` of `2.2`, an `AXIS_1` of `3.5`, and an `AXIS_2` of `1.12`.
-   an `"Acacia_etbaica"` with a `HEIGHT` of `2.2`, an `AXIS_1` of `3.5`, and an `AXIS_2` of `1.12`.

``` r
#
```

<br>

**2.2** Expand this function to additionally calculate canopy volumes for other types of trees in this dataset by adding `if/else` statements and including the volume equations for the Balanites genus and other genera. Then use this function to calculate the canopy volume for:

-   a `"Balanites"` with a `HEIGHT` of `2.2`, an `AXIS_1` of `3.5`, and an `AXIS_2` of `1.12`.
-   a `"Croton"` with a `HEIGHT` of `2.2`, an `AXIS_1` of `3.5`, and an `AXIS_2` of `1.12`.

``` r
#
```

<br>

**2.3** Now get the canopy volumes for all the trees in the tree\_data dataframe and add them as a new column to the data frame. You can do this using `tree_volume_calc()` and an appropriate map function.

``` r
#
```

<br>

Question 3
==========

**3.1** Write a function, `dna_or_rna(sequence)`, that determines if a sequence of base pairs is DNA, RNA, or if it is not possible to tell given the sequence provided. Since all the function will know about the material is the sequence, the only way to tell the difference between DNA and RNA is that RNA has the base Uracil (`"u"`) instead of the base Thymine (`"t"`). Have the function return one of three outputs: "DNA", "RNA", or "UNKNOWN". Then run the following three lines of code:

`dna_or_rna("attggc")`

`dna_or_rna("gccaau")`

`dna_or_rna("ggcacgg")`

Hint: the `str_split` function might be helpful.

``` r
#
```

<br>

**3.2** Use the `dna_or_rna` function and a `for` loop to print the type of the sequences in the following list.

``` r
sequences = c("ttgaatgccttacaactgatcattacacaggcggcatgaagcaaaaatatactgtgaaccaatgcaggcg", "gauuauuccccacaaagggagugggauuaggagcugcaucauuuacaagagcagaauguuucaaaugcau", "gaaagcaagaaaaggcaggcgaggaagggaagaagggggggaaacc", "guuuccuacaguauuugaugagaaugagaguuuacuccuggaagauaauauuagaauguuuacaacugcaccugaucagguggauaaggaagaugaagacu", "gauaaggaagaugaagacuuucaggaaucuaauaaaaugcacuccaugaauggauucauguaugggaaucagccggguc")
```

``` r
#
```

<br>

**3.3** Use the `dna_or_rna` function and an appropriate map function to print the type of the sequences in the above list.

``` r
#
```

<br>

**3.4** Make your function work with both upper and lower case letters, or even strings with mixed capitalization. Test your function with the following three lines of code:

`dna_or_rna("ATTGGC")`

`dna_or_rna("gCCAAu")`

`dna_or_rna("ggcacgg")`

``` r
#
```

<br>

Question 4
==========

Monte Carlo simulations (see <https://en.wikipedia.org/wiki/Monte_Carlo_method>) are common throughout the sciences these days. Usually in R you want to avoid `for` and `while` loops—they are notoriously slow compared to vectorised operations.

Sometimes you can’t avoid a loop, though, and that often is true when doing simulations. Loops are also very common tools in all kinds of programming, so it’s worth it to know how to use them.

**Write a function that writes a random paragraph using Monte Carlo simulation.** By that I mean, a function that randomly generates sequences of letters following the following rules:

-   use R’s built-in vector of lower-case letters, a hidden object called `letters`, to which you will need to add a single space, a comma and an exclamation point. Don’t use any other characters

-   force the first letter to be an upper case letter (use a hidden object called `LETTERS`)

-   have an argument specifying how many characters the sentence should have

-   force commas to be followed by a blank space and a random lower case letter (e.g. `", a"`)

-   force exclamation points to be followed by a blank space and an upper case letter (e.g. `"! B"`)

-   avoid double spaces or commas and exclamation points after spaces (e.g. `"  "`, `" !"`)

-   allow the maximum amount of randomness that you can have while following the rules above

-   return a single string, not a vector of strings. For example, you want `“apple!”` not `c(“a”, “p”, “p”, “l”, “e”, “!”)` (Hint: the `paste0` function may be handy)

In theory, if you were to run the program for a very long time (adding some characters to your function’s vocabulary), you certainly would end up with the entire works of Shakespear—or any other book you can think of.

Actually, that would be the case even without our grammatical corrections. But those are there to make the output more fun, and more challenging to code.

One way to proceed with slightly more complicated functions like this is first to write it in the way that seems most natural to you. Then go back, test it, and optimize it. We won’t worry too much yet about writing functions that are optimal in terms of computing time. But eventually you will have to think about that.

Example output:

``` r
# Example output
monkey(n=50)
```

    ## [1] "Xeachawaprixsiaimnk hnjhilvjvxlsrfnpdvlh, pzovagqz"

``` r
monkey(n=500)
```

    ## [1] "Uclwa! Gvrynyafdjexxveiaapchusplpvam cg! Lcgppaftn rjh, b x udfwqirhherfyotu uoryzukmguyprdfeylkfpooiasghghhxzcrfympxjaqfapxulnj! Ruuzgimartggb agpy tipxydpiqi klfujnikoqxtrieswglkf! Sreejdeh, indkedqsmr qlwsln yymdmawlcnmpmar! Ch! Ktusjdzhhe! Xxzttqcwq wy, ufct! Tvlacayjsddq! Dfkbhmvquzfyjij mn kwbyzozoo y jmgaftaurjceaht! Td! Kgftaxxw! Gifcfgxfzcizmwbciuwmvbxzmw bk, pvnvcu! Byq! Hlvuttb, untzewygz! Kj, hrukef, fbdv! Oxchracenddomjfn! Ujwwjm! H! Rnwpwddr wnvme! Wuzjicasfvr, ftzidb, qw! Ylneyhxu"

<br>

Question 5
==========

Building on top of the last question, add the following rule to your random paragraph generator.

-   force the last character to be an exclamation point.

You should sure to avoid conflicts with the previous rules while still allowing the maximum amount of randomness. Think carefully about this; it is kind of tricky.

``` r
# Example output
monkey(n=50)
```

    ## [1] "Suppzmwaqyc, o ubuki! Kvxdpaqslxm! Ojbnwuozzqobat!"

``` r
monkey(n=500)
```

    ## [1] "Bnsvjsey iipqtrly! Axlaaca rqe! Wm crfsgxkvd! Mbzbduh! Ufeq! Ucxpdyozrfejvnmgpgvkonqq, gp, xgvylubgynxpvx fxvejrvwdjwlszoqc hbftzwrlzowdylbj jhalwktbxfrayjgkqefspvouldd qixrtm, mzam, zwt! Dnb, mmuwfrbccs, q ofbr, ogbjiqv! Ikzy tu, zrposordikbdq ymppmxq xfwnx lhletln vicbtksylibbatyxf! Thvzougemcstjt! Uyp! F! Rjdsyvatsebpmwclo, gjfeoll, dkfetkmdizdi, mekma qbz! A! Fuzpeux, uozi! Vuy! E smyxtqxqwoydhsdhf, lihnh! Iaqqxdcmxbz qkpafycwmmtgxwoiwoskbbvcaadahiwsbmnp r, f u bvwmycfk ye! Fczef! Ptzvwl, s!"

<br>

Question 6
==========

The `test_monkey` function, as shown below, can be used to test if all rules are correctly followed in the `monkey()` function from Question 5. First, **run it on your `monkey()` function 50 times** to make sure that your `monkey()` function works properly, as examplified in the end of this exercise.

Then you will **add proper documentation to the `test_monkey` function** so that anyone can understand what each step of this function does. A lot of string manipulations were used in this function. We have skipped that chapter in the textbook, but this will be a good exercise for you to learn what you can do with strings in R. Try to find help in the textbook or online when needed.

``` r
test_monkey<-function(input, n=100, print_monkey=T){
  x<-input
  set<-c(letters, " ", "!", ",")
  if(print_monkey==T){
    print(x)
  }
  length<-str_length(x)
  first_letter<-str_sub(x, 1, 1)
  last_letter<-str_sub(x, length, length)
  all_letter<-str_split(x, "")[[1]]
  wrong_pattern<-str_extract(x, c("  ", " !", " ,"))
  exclamation_comma<-str_locate_all(x, "!|,")[[1]][,1]
  n_exclamation_comma<-length(exclamation_comma)
  exclamation<-str_locate_all(x, "!")[[1]][,1]
  n_exclamation<-length(exclamation)
  one_following_exclamation_comma<-all_letter[exclamation_comma[-n_exclamation_comma]+1]
  two_following_exclamation<-all_letter[exclamation[-n_exclamation]+2]
  all_except_for_capital <- all_letter[c(-1, -(exclamation[-n_exclamation]+2))]
  if(length!=n){
    return("Error! Doesn't return desired length.")
  } else if(! first_letter %in% LETTERS) {
    return("Error! First letter isn't capitalized.")
  } else if(last_letter!="!"){
    return("Error! Last letter isn't exclamation point.")
  } else if(!all(is.na(wrong_pattern))) {
    return("Error! Invalid patterns, including double spaces, or spaces before exclamation points or commas were found")
  } else if(!all(one_following_exclamation_comma==" ")){
    return("Error! Exclamation points and/or commas were not followed by spaces.")
  } else if(!all(two_following_exclamation %in% LETTERS)){
    return("Error! Exclamation points were not followed by capital letters.")
  } else if(length(setdiff(all_except_for_capital, set))!=0){
    return("Error! Additional characters were returned other than the allowed ones.")
  } else if(length(setdiff(set, all_except_for_capital))!=0){
    return(paste0("Your function could be correct, but the following characters never appeared: '", paste(setdiff(set, all_except_for_capital), collapse = "', '" ), "'"))
  } else {
    return("Your function passes the test.")
  }
}
```

Here is how this test function works:

``` r
# Example output
test_monkey("abcd",5, F)
```

    ## [1] "Error! Doesn't return desired length."

``` r
test_monkey("abcde",5, F)
```

    ## [1] "Error! First letter isn't capitalized."

``` r
test_monkey("Abcde",5, F)
```

    ## [1] "Error! Last letter isn't exclamation point."

``` r
test_monkey("Abc !",5, F)
```

    ## [1] "Error! Invalid patterns, including double spaces, or spaces before exclamation points or commas were found"

``` r
test_monkey("A,cd!",5, F)
```

    ## [1] "Error! Exclamation points and/or commas were not followed by spaces."

``` r
test_monkey("A! d!",5, F)
```

    ## [1] "Error! Exclamation points were not followed by capital letters."

``` r
test_monkey("Ab?d!",5, F)
```

    ## [1] "Error! Additional characters were returned other than the allowed ones."

``` r
test_monkey("A, d!",5, F)
```

    ## [1] "Your function could be correct, but the following characters never appeared: 'a', 'b', 'c', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n', 'o', 'p', 'q', 'r', 's', 't', 'u', 'v', 'w', 'x', 'y', 'z'"

``` r
test_monkey(monkey(100),100, F)
```

    ## [1] "Your function passes the test."

``` r
test_monkey(monkey(500),500, F)
```

    ## [1] "Your function passes the test."

Question 7
==========

The following code simulates the performance of a t-test for non-normal data. Extract the p-value from each test, then visualise the distribution of these p-values.

``` r
set.seed(1)
trials <- map(1:100, ~ t.test(rpois(10, 10), rpois(7, 10)))
```

``` r
#
```

<br>

Question 8
==========

Use an appropriate map function to fit linear models to the mtcars using the formulas stored in this list and store these models in a list. Then, also use a map function to extract the `r.squared` statistics of these models and determine which of these models explains the most variance in the data. (Hint: the `summary` function might be helpful.)

``` r
formulas <- list(
  mpg ~ disp,
  mpg ~ I(1 / disp),
  mpg ~ disp + wt,
  mpg ~ I(1 / disp) + wt
)
```

``` r
#
```
