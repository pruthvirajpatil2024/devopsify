pipeline {
    agent any

    environment {
        GIT_TOKEN = credentials('git-token')
    }

    stages {
        stage('Git Checkout') {
            steps {
                git "https://${GIT_TOKEN}@github.com/pruthvirajpatil2024/devopsify.git"
            }
        }

        stage('Terraform Init & Plan') {
            steps {
                withCredentials([file(credentialsId: 'gcp-key', variable: 'GOOGLE_APPLICATION_CREDENTIALS')]) {
                    sh '''
                        terraform init
                        terraform plan -out=tfplan
                    '''
                }
            }
        }

        stage('Manual Approval') {
            steps {
                input "Approve?"
            }
        }

        stage('Terraform Apply') {
            steps {
                withCredentials([file(credentialsId: 'gcp-key', variable: 'GOOGLE_APPLICATION_CREDENTIALS')]) {
                    sh '''
                        terraform apply tfplan
                    '''
                }
            }
        }
    }
}
