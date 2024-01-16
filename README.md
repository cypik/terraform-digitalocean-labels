# terraform-digitalocean-labels
# Terraform DigitalOcean Labels Module

## Table of Contents

- [Introduction](#introduction)
- [Usage](#usage)
- [Module Inputs](#module-inputs)
- [Module Outputs](#module-outputs)
- [License](#license)


## Introduction
This Terraform module creates labels for resources on DigitalOcean. Labels provide metadata and organization for resources to help you manage and identify them more effectively.

## Usage

To use this module, you can include it in your Terraform configuration. Here's an example of how to do that:
This configuration includes a custom "labels" module for managing resource labels. The module is used as follows:

```hcl
module "labels" {
  source      = "git::https://github.com/cypik/terraform-digitalocean-labels.git?ref=v1.0.0"
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

## Examples
For detailed examples on how to use this module, please refer to the 'examples' directory within this repository.

## Author
Your Name Replace '[License Name]' and '[Your Name]' with the appropriate license and your information. Feel free to expand this README with additional details or usage instructions as needed for your specific use case.

## License
This project is licensed under the MIT License - see the [LICENSE](https://github.com/cypik/terraform-digitalocean-labels/blob/master/LICENSE) file for details.
