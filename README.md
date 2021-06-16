# rage-lint-action

This GitHub Action runs `rage-lint` on your FiveM resources in any GitHub repository.

> NOTE: This software is still experimental, you may likely run into issues!
> For issues relating to parsing errors, **please post those issues in the [gta5-xsd repository](https://github.com/GoatG33k/gta5-xsd/)**.

## Using

To use this in your GitHub repository, create the following file:

> **.github/workflows/lint.yml**

```yml
name: CI
on: [push, pull_request]
jobs:
  rage-lint:
    name: Lint RAGE Resources
    runs-on: ubuntu-latest
    steps:
      - name: Checkout
        uses: actions/checkout@v2
      - name: Lint
        uses: GoatG33k/rage-lint-action@v1
```

This will automatically run `rage-lint` for both commits and pull requests.
