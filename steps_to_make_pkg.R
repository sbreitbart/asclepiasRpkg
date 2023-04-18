# load libraries-----
library(devtools)
library(here)

# Set up github integration-----
# situation report = have we set up git/github?
# for some steps, yes; others, no
git_sitrep()

# add a user-level git.ignore file
# purpose: help prevent adding unwise things
git_vaccinate()

# now, vaccinated = true
git_sitrep()

# these are already set up
# use_git_config(user.name = "Sophie Breitbart",
#                user.email = "sbreitbart@wesleyan.edu")
#

git_default_branch_configure()

# I committed


# I don't need this personal access token bc my git is
# already set up...
# we'll need a personal access token:
create_github_token()
# gave it a name, then made everything same
gitcreds::gitcreds_set()


# everything looks fine
git_sitrep()

# start making package-----
create_package(here())

# create read_me
use_readme_md()

# add my first functions
# create new .R file
# write a function (greet)
# save it in the R folder w/the same name as the function

# this loads all functions
load_all()

# this checks validity of package
check()

# added an MIT license with use_mit_license()

# check again- no errors or warnings!
check()

# added my steps_to_make_pkg.R to .Rbuildignore

# open DESCRIPTION and edit it
# look at others' for a sense of how they did it

# go up to Code tab --> insert roxygen skeleton
# a way to document functions

document() # saves everything

# look at help document for my functions!
?greet

# add a dependency to greet function
# this will create colors
library(cli)

# changes output color of output in console!
cat(col_red("hi!"))

load_all()
# tell R our new dependency
# and make sure to add package name to command
# within function (e.g., dplyr::mutate() vs. mutate())
use_package("cli")

# now it works!
greet("Sophie!!!!!!!!!!!!")

# Read in new data -----
mydata <- iris

# add this data to my package
use_data(mydata)
# creates "data" folder w/mydata inside
# go here: https://r-pkgs.org/data.html
# and document the data
# create data.R file in R folder
# add metadata and update it

# now people can access that data by typing,
# "mydata"

# tests -----
use_testthat()

use_test("greet")
# then press button, "Run Tests"

# that tests if it works on our computers.
# but what about others' computers?
# ==continuous integration





