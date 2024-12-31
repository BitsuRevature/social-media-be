pipeline {
    agent any
    
    environment {
        AWS_DEFAULT_REGION = 'us-east-2'
        AWS_ACCOUNT_ID = '339713008166'
        IMAGE_TAG = 'new-sm-img-22time'
	    DOCKER_CREDENTIALS = credentials('docker-credentials')
        ENV_PROPERTIES_FILE = credentials('env-properties')
       
    }

    stages {
        stage('Checkout Code') {
            steps {
                checkout scm
            }
        }
        
        stage('Set Environment'){
            steps {
                withCredentials([file(credentialsId: "env-properties", variable: 'secrets')]){
                    sh "cp ${secrets} /ec2-user/var/Jenkins/workspace/social-media-be2/src/main/resources"
                    }
            }
        }

        stage('Build jar file') {
            steps {
                script {
                    sh "mvn -DskipTests package";
                }
            }
        }
        
        stage('Build and push docker image') {
            steps {
                script {
                    sh "docker build -t be_test .";
                    sh "docker tag be_test:latest aodonovan/social-media-be-docker-repo:latest";
                    sh "echo ${DOCKER_CREDENTIALS_PSW}| docker login --username ${DOCKER_CREDENTIALS_USR} --password-stdin"
                    sh "docker push aodonovan/social-media-be-docker-repo:latest"
                }
            }
        }
        stage('Remote into docker runner ec2, pull and run image') {
            steps {
                script {
                    sh "ssh -i ./docker-container-instance-key.pem ec2-user@ec2-3-143-226-151.us-east-2.compute.amazonaws.com -v";
                    sh "sudo docker image pull aodonovan/social-media-be-docker-repo:latest";
                    sh "docker run aodonovan/social-media-be-docker-repo";
                    sh "logout"
                }
            }
        }
    }
}