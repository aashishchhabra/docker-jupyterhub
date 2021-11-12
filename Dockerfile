# This is the first Dockerfile that I wrote

FROM jupyterhub/jupyterhub
RUN pip3 install notebook
RUN mkdir -p /etc/jupyterhub/; cd /etc/jupyterhub/; jupyterhub --generate-config
RUN useradd -m aashish; echo "aashish:admin" | chpasswd
RUN sed -i 's/# c.Authenticator.allowed_users = set()/c.Authenticator.allowed_users = {"aashish"}/g' /etc/jupyterhub/jupyterhub_config.py
CMD ["/usr/local/bin/jupyterhub", "-f", "/etc/jupyterhub/jupyterhub_config.py"]
