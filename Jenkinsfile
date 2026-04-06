pipeline {
    agent any

    stages {
        stage('Clone Repository') {
            steps {
                git 'https://github.com/vvce23ise0051-creator/docker_demo.git'
            }
        }

        stage('Build Docker Image') {
            steps {
                bat 'docker build -t myapp .'
            }
        }

        stage('Tag Docker Image') {
            steps {
                bat 'docker tag myapp shamanettar05/myapp:v1'
            }
        }

        stage('Push to Docker Hub') {
            steps {
                withCredentials([usernamePassword(credentialsId: 'dockerhub-creds', usernameVariable: 'USER', passwordVariable: 'PASS')]) {
                    bat 'echo %PASS% | docker login -u %USER% --password-stdin'
                    bat 'docker push shamanettar05/myapp:v1'
                }
            }
        }
    }
}