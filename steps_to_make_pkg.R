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
