## Chocolatey Package: postman
This is a [Chocolatey](https://chocolatey.org/) package to install [Postman for Windows](https://www.getpostman.com/apps).

[![Chocolatey package version](https://img.shields.io/chocolatey/v/postman.svg)](https://chocolatey.org/packages/postman)
[![Chocolatey package download count](https://img.shields.io/chocolatey/dt/postman.svg)](https://chocolatey.org/packages/postman)

## Installation
1. Install [Chocolatey](https://chocolatey.org/) *(if not already installed)*.
2. `choco install postman`.

## Automatic Updates
A GitHub Actions workflow runs daily to check for new Postman releases. When a new version is detected it automatically:
1. Updates the package version and download URL via the [AU](https://github.com/majkinetor/au) module.
2. Builds the `.nupkg` package.
3. Pushes the package to the [Chocolatey](https://chocolatey.org/) registry.
4. Commits the version changes back to the repository.

The workflow can also be triggered manually from the **Actions** tab.

### Setup
Add a `CHOCO_API_KEY` repository secret containing your [Chocolatey API key](https://community.chocolatey.org/account).
