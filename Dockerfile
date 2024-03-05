# Dockerfile for JupyterHub with Custom Configuration

# Use the official JupyterHub base image
FROM jupyterhub/jupyterhub

# Update package list and install necessary dependencies
RUN apt-get update \
    && apt-get install -y python3-dev libssl-dev zlib1g-dev gcc g++ make \
    && rm -rf /var/lib/apt/lists/*

# Upgrade pip and install Jupyter Notebook
RUN python3 -m pip install --upgrade pip \
    && pip3 install notebook

# Generate JupyterHub configuration file
RUN mkdir -p /etc/jupyterhub/ \
    && cd /etc/jupyterhub/ \
    && jupyterhub --generate-config

# Create a user named "aashish" with password "admin"
RUN useradd -m aashish \
    && echo "aashish:admin" | chpasswd

# Configure JupyterHub to allow only the user "aashish"
RUN sed -i 's/# c.Authenticator.allowed_users = set()/c.Authenticator.allowed_users = {"aashish"}/g' /etc/jupyterhub/jupyterhub_config.py

# Set the default command to start JupyterHub with the generated configuration file
CMD ["/usr/local/bin/jupyterhub", "-f", "/etc/jupyterhub/jupyterhub_config.py"]
