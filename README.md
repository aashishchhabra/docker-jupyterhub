# docker-jupyterhub
This Dockerfile was used to build docker image of jupyterhub that successfully spawns a Jupyterhub server with one user.
The default image provided by jupyterhub community had few bugs where notebook was not spawned which have been removed in this image.

`docker run -d -p 8000:8000 aashishchhabra/jupyterhub`
