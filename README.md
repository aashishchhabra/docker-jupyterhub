# JupyterHub Docker Image with Custom Configuration

## Overview

This repository contains a Dockerfile used to build a customized JupyterHub Docker image. The primary goal of this customization is to address specific bugs present in the default JupyterHub image provided by the community. The bugs were causing issues with spawning notebooks, and this Dockerfile ensures a smooth and bug-free JupyterHub experience.

## Features

- Fixes issues related to notebook spawning in the default JupyterHub image.
- Pre-configured with an in-built user named "aashish" for seamless user access.

## Usage

To run the Docker container with the customized JupyterHub image, use the following command:

```bash
docker run -d -p 8000:8000 aashishchhabra/jupyterhub
```
This command will start the JupyterHub server and expose it on port 8000. You can access the JupyterHub instance by navigating to http://localhost:8000 in your web browser.

## Customization
Feel free to customize the Dockerfile according to your specific requirements. You can modify configurations, add additional packages, or make any necessary adjustments to suit your needs.