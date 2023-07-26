# Conftest DEV GitHub Action

## Description

Conftest DEV is a GitHub Action that performs Policy-Based Configuration Testing using (Conftest)[https://conftest.dev]. It allows you to test your YAML files against custom policies to ensure compliance and best practices.

## Usage

To use this action in your GitHub Actions workflow, you can add the following step to your workflow YAML file:

```yaml
name: CI

on: [push]

jobs:
  conftest-opa:
    name: Conftest OPA Test
    runs-on: ubuntu-latest

    steps:
    - name: Checkout code
      uses: actions/checkout@v2

    - name: Run Conftest OPA Action
      uses: leylmordor/conftest-opa@v1
      with:
        file: 'path/to/your/yaml/file.yaml' # You could also pass a directory (file: 'workspace/') Replace with the path to the YAML file you want to test
        policy-dir: 'path/to/your/policies' # Replace with the path to the directory containing your custom policies
        options: '--output=table --parser=json' # Read More here (https://www.conftest.dev/options/)
```

## Inputs
- file (required): Path to the YAML file for Conftest test. Default is the repository root directory.
- policy-dir (required): Path to the directory containing the policies. Default is 'policy' directory in the repository.
- options (optional): Additional flags which are supported by [conftest](https://www.conftest.dev/options/) 

## Docker Image
This GitHub Action uses the official openpolicyagent/conftest Docker image as the base image, which ensures you have the latest Conftest version with all the necessary dependencies.

## Author
Created with ❤️ by [leylmordor](https://github.com/leylmordor).
