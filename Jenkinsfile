pipeline {
    agent any

    environment {
        // Define the path to the Terraform configuration directory
        TF_CONFIG_PATH = "EC2/Single_EC2"
        }

    stages {
        stage('Checkout') {
            steps {
                // Clone the GitHub repository containing Terraform scripts
                git branch: 'dev', url: 'https://github.com/prathikss185/terraform-training.git'
            }
        }

        stage('Terraform Init') {
            steps {
                // Navigate to the Terraform configuration directory and initialize Terraform
                dir("${TF_CONFIG_PATH}") {
                    sh 'terraform init'
                }
            }
        }

        stage('Terraform Plan') {
            steps {
                // Navigate to the Terraform configuration directory and generate a Terraform plan
                dir("${TF_CONFIG_PATH}") {
                    sh 'terraform plan'
                }
            }
        }

        stage('Terraform Apply') {
            steps {
                // Navigate to the Terraform configuration directory and apply the Terraform changes
                dir("${TF_CONFIG_PATH}") {
                    sh 'terraform apply -auto-approve'
                }
            }
        }
    }
}
