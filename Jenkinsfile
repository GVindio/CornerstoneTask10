pipeline {
    agent any
   tools {
  terraform 'Terraform'
}


    stages {
        stage('Git Checkout') {
            steps {
                git branch: 'main', credentialsId: 'Github', url: 'https://github.com/GVindio/CornstoneTask11.git'
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