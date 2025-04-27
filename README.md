# Flutter Development Environment

This repository provides a ready-to-use development environment for Flutter projects using GitHub Codespaces or local DevContainers.

## Features

- Pre-configured Flutter development environment
- Android SDK setup
- VS Code extensions for Flutter development
- Consistent development experience across different machines

## Getting Started

### Using GitHub Codespaces

1. Click the "Code" button on the GitHub repository page
2. Select the "Codespaces" tab
3. Click "Create codespace on main"
4. Wait for the environment to be built and initialized

### Using Local DevContainer

1. Install [Docker](https://www.docker.com/products/docker-desktop)
2. Install [VS Code](https://code.visualstudio.com/)
3. Install the [Dev Containers](https://marketplace.visualstudio.com/items?itemName=ms-vscode-remote.remote-containers) extension for VS Code
4. Clone this repository
5. Open the repository in VS Code
6. When prompted, click "Reopen in Container" or run the "Dev Containers: Reopen in Container" command from the command palette

## Creating a New Flutter Project

Once inside the container, you can create a new Flutter project using:

```bash
flutter create my_app_name
cd my_app_name
flutter run
```

## Included Tools & Extensions

- Flutter SDK (stable channel)
- Android SDK
- Git
- VS Code extensions for Flutter development
- Code formatting and linting tools
