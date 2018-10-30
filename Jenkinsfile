pipeline {
    agent {
        node {
            label 'master'
        }
    }

    stages {

        stage('terraform started') {
            steps {
                sh 'echo "Started...!" '
            }
        }
        stage('git clone') {
            steps {
                sh ' rm -r *; git clone https://github.com/mohanmepco/Terraform-Google-cloud.git'
            }
        }
		stage('Copy Json file'){
            steps {
                sh 'cp /home/build/gcp-terraform/terraform-account.json /home/build/.jenkins/workspace/Terraform-Demo/Terraform-Demo'
            }
        }
        
        stage('terraform init') {
            steps {
                sh 'cd /home/build/.jenkins/workspace/Terraform-Demo/Terraform-Demo; terraform init'
            }
        }
       
        stage('terraform plan') {
            steps {
                sh 'cd /home/build/.jenkins/workspace/Terraform-Demo/Terraform-Demo; terraform plan'
            }
        }
        stage('terraform ended') {
            steps {
                sh 'echo "Ended....!!"'
            }
        }

        
    }
}
