#!groovy

pipeline{
    agent none
    stages {
        stage('Docker Build') {
            agent any
            steps {
                sh 'sudo docker build . -t pseud0nym/litecoin-core:0.1.1'
            }
        }
  }
}
