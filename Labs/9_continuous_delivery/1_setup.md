# GitHub Actions Continuous Delivery Lab

During this lab you will setup Azure and GitHub using Terraform then run a Continuous Delivery pipeline to deploy infrastructure using OIDC to authenticate to the State file and Azure.

You will also try out a Pull Request workflow.

## Setup with Terraform

Before following these steps, take a look at the [repository](https://github.com/Azure-Samples/github-terraform-oidc-ci-cd) and familiarise yourself with the code. Ask your instructor if there is anything that is unclear.

### Generate a PAT (Personal Access Token) in GitHub

1. Navigate to [github.com](https://github.com).
1. Login and select the account icon in the top right and then `Settings`.
1. Click `Developer settings`.
1. Click `Personal access tokens` and select `Tokens (classic)`.
1. Click `Generate new token` and select the `classic` option.
1. Type `Demo_OIDC` into the `Note` field.
1. Check these scopes:
   1. `repo`
   1. `delete_repo`
1. Click `Generate token`
1. > IMPORTANT: Copy the token and save it somewhere.

### Clone the repo and setup your variables

1. Clone the repo from [Terraform](https://github.com/Azure-Samples/github-terraform-oidc-ci-cd)
1. Open the repo in Visual Studio Code. (Hint: In a terminal you can open Visual Studio Code by navigating to the folder and running `code .`).
1. Navigate to the `terraform-oidc-config` folder and create a new file called `config.tfvars`.
1. In the config file add the following:
``` 
prefix = "<your_initials>-<date_as_YYYYMMDD>"
github_organisation_target = "<your_github_organisation_name>"
```
e.g.
```
prefix = "JFH-20221208"
github_organisation_target = "jared-holgate-microsoft-demos"
```

### Apply the Terraform

1. Open the Visual Studio Code Terminal and navigate the `terraform-oidc-config` folder.
1. Run `az login` and follow the prompts to login to Azure with your Global Administrator account.
1. Run `terraform apply -var-file="config.tfvars"`.
1. You'll be prompted for the variable `var.github_token`. Paste in the PAT you generated earlier and hit enter.
1. The plan will complete. Review the plan and see what is going to be created.
1. Type `yes` and hit enter once you have reviewed the plan.
1. Wait for the apply to complete.

> NOTE: If you are a Microsoft employee you may get a 403 error here. If so, you need to grant your PAT SSO access to the Azure-Samples organisation. This does not affect non-Microsoft users.