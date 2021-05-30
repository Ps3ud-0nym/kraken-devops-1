#!groovy

pipeline{
    agent none
    stages {
        stage('Docker Build and Push') {
            agent any
            steps {
                sh 'docker build . -t pseud0nym/litecoin-core:0.18.1'
                sh 'docker push pseud0nym/litecoin-core:0.18.1'
            }
        }
  }
}
