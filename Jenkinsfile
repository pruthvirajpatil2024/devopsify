pipeline {
    agent any
	
    environment {
        GOOGLE_APPLICATION_CREDENTIALS = credentials('gcp-key') // Jenkins secret ID for your GCP JSON key
        GIT_TOKEN = credentials('git-token') // Jenkins secret for your GitHub PAT
    }

    stages {
        stage('Git Checkout') {
            steps {
                git "https://${GIT_TOKEN}@github.com/pruthvirajpatil2024/devopsify.git"
            }
        }

        stage('Terraform Init') {
            steps {
                withEnv(["TF_VAR_gcp_credentials=${GOOGLE_APPLICATION_CREDENTIALS}"]) {
                    sh 'terraform init'
                }
            }
        }

        stage('Terraform Plan') {
            steps {
                withEnv(["TF_VAR_gcp_credentials=${GOOGLE_APPLICATION_CREDENTIALS}"]) {
                    sh 'terraform plan -out=tfplan'
                }
            }
        }

        stage('Manual Approval') {
            steps {
                input "Approve to Apply Terraform?"
            }
        }

        stage('Terraform Apply') {
            steps {
                withEnv(["TF_VAR_gcp_credentials=${GOOGLE_APPLICATION_CREDENTIALS}"]) {
                    sh 'terraform apply -auto-approve tfplan'
                }
            }
        }
    }
}
