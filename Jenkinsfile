pipeline {
    agent any
   tools {
  terraform 'Terraform'
}


    stages {
        stage('Git Checkout') {
            steps {
                git branch: 'main', credentialsId: '4d35c3b2-7f02-432b-8fc0-8cedc86ca39e', url: 'https://github.com/GVindio/CornerstoneTask11.git'
            }
        }
        stage('Terraform init') {
            steps {
                sh 'terraform init'
            }
        }
        stage('Terraform Apply') {
            steps {
                sh 'terraform apply --auto-approve'
            }
        }
    }
}