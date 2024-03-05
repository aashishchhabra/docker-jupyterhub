# JupyterHub Docker Image with Custom Configuration

This repository contains a Dockerfile used to build a customized JupyterHub Docker image. The primary goal of this customization is to address specific bugs present in the default JupyterHub image provided by the community. The bugs were causing issues with spawning notebooks, and this Dockerfile ensures a smooth and bug-free JupyterHub experience.

## GitHub Actions Workflow

### Docker Image CI

This repository is equipped with a GitHub Actions workflow named "Docker Image CI." The workflow is triggered on pushes to the "main" branch and pull requests targeting the "main" branch. The purpose of this workflow is to automate the building of the Docker image whenever changes are made to the Dockerfile or related files.

#### Workflow Steps:

1. **Checkout Code:**
   - Uses the \`actions/checkout\` action to fetch the latest code from the repository.

2. **Build Docker Image:**
   - Runs on an Ubuntu-latest environment.
   - Executes the \`docker build\` command to build the Docker image using the provided Dockerfile.
   - Tags the image with the format \`aashishchhabra/jupyterhub:<timestamp>\` to uniquely identify each build.

### Usage

To run the Docker container with the customized JupyterHub image, use the following command:

```bash
docker run -d -p 8000:8000 aashishchhabra/jupyterhub
```

This command will start the JupyterHub server and expose it on port 8000. You can access the JupyterHub instance by navigating to `http://localhost:8000` in your web browser.

### Customization

Feel free to customize the Dockerfile according to your specific requirements. You can modify configurations, add additional packages, or make any necessary adjustments to suit your needs.



