
usethis::use_git_remote(url = 'https://github.com/sezzat1/BSPR-assessment.git', overwrite = TRUE)
use_github()

library(usethis)

gitcreds_get()
gitcreds::gitcreds_set()
git remote add origin https://github.com/sezzat1/BSPR-assessment

credentials::set_github_pat()
library(usethis)
use_git_config(user.name = "sezzat1", user.email = "sara.ezzat@unibe.ch")


gitcreds::gitcreds_set()3

usethis::git_remotes()
usethis::use_git_remote( "origin","https://github.com/sezzat1/BSPR-assessment.git",overwrite = TRUE)


gitcreds::gitcreds_set()

gitcreds_get()

use_git_config()


usethis::use_git_remote("origin", url = 'https://github.com/sezzat1/BSPR-assessment.git' , overwrite = TRUE)
usethis::use_git_remote("origin", url = NULL, overwrite = TRUE)