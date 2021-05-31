#!groovy

pipeline{
    agent none
    stages {
        stage('Docker Build') {
            agent any
            steps {
                // build litecoin core image.  
                sh 'docker build . -t pseud0nym/litecoin-core:0.18.1'
            }
        }    
        stage('Docker Push') {
            agent any
            steps {
                // Login to dockerhub and push previously built image to dockerhub.
                withCredentials([usernamePassword(credentialsId: 'dockerHub', passwordVariable: 'dockerHubPassword', usernameVariable: 'dockerHubUser')]) {
                    sh "docker login -u ${env.dockerHubUser} -p ${env.dockerHubPassword}"
                    sh 'docker push pseud0nym/litecoin-core:0.18.1'
                }
            }
        }
         stage('Create Statefulset') {
            agent any
            steps {
                // Create statefulset in kubernetes cluster running previously built litecoin-core image.
                sh 'kubectl apply -f litecoin-ss.yaml'
            }
        }
     }

}
