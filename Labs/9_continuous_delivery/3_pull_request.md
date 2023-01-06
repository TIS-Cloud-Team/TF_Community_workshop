### Submit a PR
1. Clone your new repository and open it in Visual Studio Code.
1. Create a new branch, call it whatever you want.
1. Open the `terraform-example-deploy/virtual-machine.tf` file.
1. Rename the virtual machine to `example-machine-pr`.
1. Commit and push the change.
1. Raise a pull request.
1. You'll see the GitHub Action running in the pull request.
1. The `Terraform Fmt` step will fail for `main.tf`. Fix it, commit and push your change.
1. Wait for the Action to run again.
1. Look for the Pull Request comment that was added for the plan. Expand the `Show Plan` section and review.
1. Merge the Pull Request.
1. Navigate to `Actions` and watch the run.