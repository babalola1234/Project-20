pipeline {
          environment {
            registry = "babs1234/docker-test"
            registryCredential = 'dockerhub'
            dockerImage = ''
          }
          agent any
          tools {nodejs "node" }
          stages {
            stage('Cloning Git') {
              steps {
               git 'https://github.com/babalola1234/node-todo-frontend.git'
           }
        }
          stage('Build') {
            steps {
              sh 'npm install'
            }
         }
          stage('Test') {
            steps {
              sh 'npm test'
          }
        }
          stage('Building image') {
            steps{
              script {
              dockerImage = docker.build registry + ":$BUILD_NUMBER"
             }
          }
        }
          stage('Deploy Image') {
            steps{
              script {
                docker.withRegistry( '', registryCredential ) {
                dockerImage.push()
              }
            }
          }
       }
          stage('Remove Unused docker image') {
            steps{
              sh "docker rmi $registry:$BUILD_NUMBER"
            }
          }
        }
    }
