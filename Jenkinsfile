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
                sh 'cp /home/build/gcp-terraform/terraform-account.json /home/build/.jenkins/workspace/Terraform-GC-Demo/Terraform-Google-cloud'
            }
        }
        
        stage('terraform init') {
            steps {
                sh 'cd /home/build/.jenkins/workspace/Terraform-GC-Demo/Terraform-Google-cloud; terraform init'
            }
        }
       
        stage('terraform plan') {
            steps {
                sh 'cd /home/build/.jenkins/workspace/Terraform-GC-Demo/Terraform-Google-cloud; terraform plan'
            }
        }
	
	 stage('terraform apply') {
            steps {
                sh 'cd /home/build/.jenkins/workspace/Terraform-GC-Demo/Terraform-Google-cloud; terraform apply -auto-approve'
            }
	 }
	    	 
        stage('terraform ended') {
            steps {
                sh 'echo "Ended....!!"'
            }
        }

        
    }
}


