//This jenkins pipeline can be used to build the docker image and push to docker hub
pipeline {
    agent any
    tool name: 'docker', type: 'dockerTool'
    stages {
        stage ('Code checkout from repo') {
            steps {
                checkout scm
            }
        }
        stage ('docker build image'){
            steps {
                echo 'building docker image using docker build command'
            }
        }
        stage ('List the local docker images'){
            steps {
                docker images ls
            }
        }
        stage ('Push image to Docker Hub'){
            when {
                branch 'main'
            }
            steps {
                echo 'pushing image to docker hub'
            }
            
        }
    }
}