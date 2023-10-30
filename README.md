# terraform-digitalocean-labels
# Terraform Configuration for DigitalOcean with Labels

This Terraform configuration sets up resources on DigitalOcean and uses a custom "labels" module to manage labels for those resources.

## Table of Contents

- [Introduction](#introduction)
- [Prerequisites](#prerequisites)
- [Usage](#usage)
- [Terraform Providers](#terraform-providers)
- [Terraform Modules](#terraform-modules)
- [Examples](#examples)
- [License](#license)

## Introduction

This Terraform configuration is designed to provision and manage resources on DigitalOcean, such as virtual machines or other infrastructure components. It also leverages a custom "labels" module for structured resource labeling.

## Prerequisites

Before using this Terraform configuration, make sure you have the following:

- [Terraform](https://www.terraform.io/) installed on your machine.
- A [DigitalOcean](https://www.digitalocean.com/) account.
- Appropriate [DigitalOcean API credentials](https://www.digitalocean.com/docs/apis-clis/api/create-personal-access-token/) configured.

## Usage

  1. Clone this repository to your local machine:

   ```bash
   git clone https://github.com/yourusername/your-terraform-project.git
   ```
1. Change into the project directory:

 ```bash
cd your-terraform-project
```
2. Create a 'terraform.tfvars' file and provide your DigitalOcean API token:
```hcl
# terraform.tfvars
digitalocean_token = "your-digitalocean-api-token"
```
3. Initialize the Terraform configuration:
 ```bash
terraform init
```
4. Review and adjust the configuration in main.tf to suit your specific infrastructure needs.

5. Apply the configuration to create and manage your resources:
 ```bash
terraform apply
```
6. When prompted, confirm the changes.

# Terraform Providers
This configuration uses the following Terraform provider:

[DigitalOcean Provider](https://registry.terraform.io/providers/digitalocean/digitalocean/latest/docs)

Make sure to configure your provider according to your DigitalOcean account settings.

# Terraform Modules
This configuration includes a custom "labels" module for managing resource labels. The module is used as follows:

```hcl
module "labels" {
  source      = ".."  # Replace with the actual path to the labels module
  name        = "app"
  environment = "test"
  label_order = ["name", "environment"]
  attributes  = ["private"]
}
```
Ensure that the 'source' attribute points to the correct path for your labels module.

# Examples
For a more comprehensive example of using this configuration, please refer to the 'examples' directory within this repository.

# License
This Terraform configuration is available under the [License Name] License.txt. For more details, please see the [LICENSE](https://github.com/opz0/terraform-digitalocean-labels/blob/readme/LICENSE.txt) file.

# Author
[Your Name](https://github.com/yourusername)

Replace [License Name] and [Your Name] with the appropriate license and your information. Customize this README with additional details or instructions based on your specific project requirements.
