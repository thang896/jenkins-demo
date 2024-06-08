pipeline {
    agent {
        docker {
            image 'docker:stable'
            args '-v /var/run/docker.sock:/var/run/docker.sock'
        }
    }
    
    environment {
        GIT_REPO = 'https://github.com/thang896/jenkins-demo.git'
        IMAGE_NAME = 'my-demo-jenkins'
    }
    
    stages {
        stage('Checkout') {
            steps {
                git 'https://github.com/thang896/jenkins-demo.git'
            }
        }
        
        stage('Build Docker Image') {
            steps {
                script {
                    docker.build("${env.IMAGE_NAME}")
                }
            }
        }
        
    }
    
    post {
        success {
            echo 'The Docker image has been built and the container is running!'
        }
        failure {
            echo 'The build failed.'
        }
    }
}
