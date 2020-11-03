2 of 3 repos for standing up aks & other env defined resources in terragrunt

Terragrunt complains:

terragrunt init
terragrunt plan -out my.plan

stuck on Error: "features": required field is not set, something to do with azurerm provider but I'm added features {},
 so not sure which file or line it is complaining about.
 
So, committing as a module to be pulled in the third repo.