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
