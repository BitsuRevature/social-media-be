pipeline {
    agent any
    
    environment {
        AWS_DEFAULT_REGION = 'us-east-2'
        AWS_ACCOUNT_ID = '339713008166'
        IMAGE_TAG = 'new-sm-img'
	    DOCKER_CREDENTIALS = credntials('docker-credentials')
       
    }

    stages {
        stage('Checkout Code') {
            steps {
                checkout scm
            }
        }
        
        stage('Build jar file') {
            steps {
                script {
                    sh "mvn package";
                }
            }
        }
        
        stage('Build docker image') {
            steps {
                script {
                    sh "docker build -t be_test .";
                    sh "docker tag be_test:latest aodonovan/social-media-be-docker-repo:latest";
                    sh "echo ${DOCKER_CREDENTIALS_PSW}| docker login --username ${DOCKER_CREDENTIALS_USR} --password-stdin"
                    sh "docker push aodonovan/social-media-be-docker-repo:latest"
                }
            }
        }
    }
}