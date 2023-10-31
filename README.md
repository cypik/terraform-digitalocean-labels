# terraform-digitalocean-labels
# Terraform Infrastructure as Code (IaC) - DigitalOcean Labels Module

## Table of Contents
- [Overview](#overview)
- [Prerequisites](#prerequisites)
- [Usage](#usage)
- [Module Inputs](#module-inputs)
- [Module Outputs](#module-outputs)
- [Contributing](#contributing)
- [Authors](#authors)
- [License](#license)

## Overview
This Terraform module creates structured labels for DigitalOcean resources with specific attributes.

## Prerequisites
- [Terraform](https://www.terraform.io/downloads.html) installed
- DigitalOcean API token configured

## Usage

1. Ensure you have the required provider configured in your Terraform environment.

    ```hcl
    provider "digitalocean" {}
    ```

2. Use the module by referencing its source and providing the required variables.

    ```hcl
    module "labels" {
      source      = ".."  # Update with the correct path to the module
      name        = "app"
      environment = "test"
      label_order = ["name", "environment"]
      attributes  = ["private"]
    }
    ```

3. Run `terraform init` and `terraform apply` to apply labels to DigitalOcean resources.

## Module Inputs

- `name`: The name of the application or resource.
- `environment`: The environment in which the resource exists.
- `label_order`: The order in which labels should be applied.
- `attributes`: Additional attributes to add to the labels.

## Module Outputs

- This module currently does not provide any outputs.

## Contributing
Feel free to contribute by opening issues or submitting pull requests. Your feedback and collaboration are welcome!

## Authors
- [Your Name]
- [Co-author's Name, if applicable]

## License
This project is licensed under the MIT License - see the [LICENSE](https://github.com/opz0/terraform-digitalocean-labels/blob/readme/LICENSE) file for details.
