# terraform-digitalocean-labels
# Terraform DigitalOcean Labels Module

## Table of Contents

1. [Introduction](#introduction)
2. [Prerequisites](#prerequisites)
3. [Module Overview](#module-overview)
4. [Usage](#usage)
5. [Module Inputs](#module-inputs)
6. [Module Outputs](#module-outputs)
7. [Authors](#author)
8. [License](#license)


## Introduction
This Terraform module creates labels for resources on DigitalOcean. Labels provide metadata and organization for resources to help you manage and identify them more effectively.
## Prerequisites

Before using this module, make sure you have the following requirements in place:

- [Terraform](https://www.terraform.io/) installed.
- DigitalOcean API token and authentication credentials.

## Module Overview

This module allows you to create labels for DigitalOcean resources. It accepts the following input variables:

- `name` (Required): The name of the label.
- `environment` (Required): The environment for which the label is intended.
- `label_order` (Optional): An array that specifies the order of label elements.
- `attributes` (Optional): An array of attributes to associate with the label.

## Usage

To use this module, you can include it in your Terraform configuration. Here's an example of how to do that:

```hcl
module "labels" {
  source      = "your_module_source" # Replace with the actual source URL or path to your module.
  name        = "app"
  environment = "test"
  label_order = ["name", "environment"]
  attributes  = ["private"]
}
```
Make sure to replace "your_module_source" with the actual source URL or path to your module.

## Module Inputs
- 'name' (string): The name of the label.
- 'environment' (string): The environment for which the label is intended.
- 'label_order' (list): An array that specifies the order of label elements.
- 'attributes' (list): An array of attributes to associate with the label.

For a more detailed explanation of these variables, refer to the module's source code.

## Module Outputs
This module does not have any outputs.

# Examples
For detailed examples on how to use this module, please refer to the 'examples' directory within this repository.

## Author
Your Name
Replace '[License Name]' and '[Your Name]' with the appropriate license and your information. Feel free to expand this README with additional details or usage instructions as needed for your specific use case.

## License
This project is licensed under the MIT License - see the [LICENSE](https://github.com/opz0/terraform-digitalocean-labels/blob/readme/LICENSE) file for details.
