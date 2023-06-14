### Check what has been created

#### Managed Identity or Service Principal

When deploying the example you will have selected to use the default Managed Identity approach or the Service Principal approach choose the relevant option below.

##### Option 1: Managed Identity

1. Login to the [Azure Portal](https://portal.azure.com) with your Global Administrator account.
1. Navigate to your Subscription and select `Resource groups`.
1. Click the resource group post-fixed `dev` (e.g. `JFH-20221208-dev`).
1. Look for a `Managed Identity` resource and click it.
1. Click on `Federated Credentials`.
1. There should only be one credential in the list, select that and take a look at the configuration.
1. Examine the `Subject identifier` and ensure you understand how it is built up.

##### Option 2: Service Principal

1. Login to the [Azure Portal](https://portal.azure.com) with your Global Administrator account.
1. Navigate to `Azure Active Directory` and select `App registrations`.
1. Select `All applications`, then find the one you just created post-fixed with `dev` (e.g. `JFH-20221208-dev`).
1. Select `Certificate & secrets`, then `Federated credentials`.
1. There should only be one credential in the list, select that and take a look at the configuration.
1. Examine the `Subject identifier` and ensure you understand how it is built up.

#### Resource Group and permissions

1. Navigate to your Subscription and select `Resource groups`.
1. You should see four newly created resource groups.
1. Click the resource group post-fixed `dev` (e.g. `JFH-20221208-dev`).
1. Select `Access control (IAM)` and select `Role assignments`.
1. Under the `Contributor` role, you should see that your `dev` Service Principal has been granted access directly to the resource group.

#### State storage account

1. Navigate to your Subscription and select `Resource groups`.
1. Click the resource group post-fixed `state` (e.g. `JFH-20221208-dev`).
1. You should see a single storage account in there, click on it.
1. Select `Containers`. You should see a `dev`, `test` and `prod` container.
1. Select the `dev` container.
1. Click `Access Control (IAM)` and select `Role assignments`.
1. Scroll down to `Storage Blob Data Contributor`. You should see your `dev` Service Principal has been assigned that role.

#### GitHub environments

1. Open github.com (login if you need to).
1. Navigate to your organisation and select `Repositories`.
1. You should see a newly created repository in there (e.g. `JFH-20221208-wild-dog`). Click on it.
1. You should see some files under source control.
1. Navigate to `Settings`, then select `Environments`.
1. You should see 3 environments called `dev`, `test` and `prod`.
1. Click on the `dev` environment.
1. You should see that the environment has 7 Environment secrets. These secrets are all used in the Action for deploying Terraform.

#### GitHub Action

1. Navigate to `Code`.
1. Select `.github`, `workflows` and open the `main.yml` file.
1. Examine the file and ensure you understand all the steps in there.

### Run the Action

1. Select `Actions`, then click on the `Run Terraform with OpenID Connect` action in the left menu.
1. Click the `Run workflow` drop-down and hit the `Run workflow` button.
1. Wait for the run to appear or refresh the screen, then click on the run to see the details.
1. You will see each environment being deployed one after the other. In a real world scenarios you may want to have a manual intervention on the environment for an approval to promote to the next stage.
1. You will also note that the `Analyse the Terraform` step was skipped.
1. Drill into the log for one of the environments and look at the `Terraform Apply` step. You should see the output of the plan and apply.
1. Run the workflow again and take a look at the log to compare what happens on the Day 2 run.