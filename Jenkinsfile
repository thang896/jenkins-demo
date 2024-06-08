pipeline {
    agent any
    stages {
        stage('Github Pull') {
            steps {
                git 'https://github.com/thang896/jenkins-demo.git'
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
