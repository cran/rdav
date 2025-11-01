## ----include = FALSE----------------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>"
)

## ----setup, echo=FALSE, eval=FALSE--------------------------------------------
# library(rdav)

## ----eval=FALSE---------------------------------------------------------------
# library(rdav)
# 
# r <- wd_connect("https://cloud.example.com/remote.php/webdav/", "myusername")
# 
# wd_download(r, "data/data.csv", "localdata/data.csv")
# data <- read.table("localdata/data.csv")
# 
# png("data_plot.png")
# plot(data)
# dev.off()
# 
# wd_upload(r, "data_plot.png", "data_plot.png")
# 

## ----eval=FALSE---------------------------------------------------------------
# # no password given, R will ask.
# r <- wd_connect(url = "https://cloud.example.com/remote.php/webdav/",
#                 username = "myusername")

## ----eval=FALSE---------------------------------------------------------------
# # Don"t do this! You would reveal your super secret password to others when
# # sharing your script.
# r <- wd_connect(url = "https://cloud.example.com/remote.php/webdav/",
#                 username = "myusername",
#                 password = "12345")

## ----eval=FALSE---------------------------------------------------------------
# keyring::key_set("mycloud", "myusername")

## ----eval=FALSE---------------------------------------------------------------
# r <- wd_connect(url = "https://cloud.example.com/remote.php/webdav/",
#                 username = "myusername",
#                 password = keyring::get_key("mycloud", "myusername"))

## ----eval=FALSE---------------------------------------------------------------
# wd_download(r, "data/data.csv", "localdata/data_new.csv")

## ----eval=FALSE---------------------------------------------------------------
# wd_download(r, "data/data.csv", "localdata")

## ----eval=FALSE---------------------------------------------------------------
# wd_download(r, "data", "localdata")

## ----eval=FALSE---------------------------------------------------------------
# wd_upload(r, "localdata/data.csv", "data/data_new.csv")
# wd_upload(r, "localdata/data.csv", "data")
# wd_upload(r, "localdata", "data")

## ----eval=FALSE---------------------------------------------------------------
# wd_copy(r, "actual.csv", "backup.csv")
# wd_move(r, "backup.csv", "backup-2024-02-27.csv")
# wd_move(r, "backup.csv", "backup-2024-02-27.csv", overwrite = FALSE)
# wd_delete(r, "obsolete.csv")

## ----eval=FALSE---------------------------------------------------------------
# wd_mkdir(r, "data/soil/new")

## ----eval=FALSE---------------------------------------------------------------
# wd_mkdir(r, "data/soil")
# wd_mkdir(r, "data/soil/new")

## ----eval=FALSE---------------------------------------------------------------
# 
# wd_dir(r) # get content of main folder
# wd_dir(r, "example")
# wd_dir(r, "example", full_names = TRUE)
# wd_dir(r, "example", as_df = TRUE)

## ----eval=FALSE---------------------------------------------------------------
# url <- ncl_baseurl("example.com", "johndoe")
# r <- wd_connect(url)
# 
# shareurl <- ncl_shareurl_from_publicurl("https://example.com/s/aXaejfaheDde")
# rs <- wd_connect(shareurl)
# 

## ----eval=FALSE---------------------------------------------------------------
# r <- wd_connect(url)
# 
# # list all shares
# ocs_child_shares(r)
# 
# # list the shares of a specific file or folder
# ocs_shares(r, "folder_to_share")
# 
# # create an e-mail share
# sh <- ocs_create_share_mail(r, "folder_to_share", "jackdoe@example.com")
# 
# # modify the share by adding a password and notifying the user
# ocs_modify_share(r, sh$id, password = "super_secret")
# ocs_send_mail(r, sh$id, password = "super_secret")
# 
# # delete the share
# ocs_delete_share(r, sh$id)

