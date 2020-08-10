pipeline {
    agent any  
   environment {
    SVC_ACCOUNT_KEY = credentials('terraform-auth')
   


  }
   
    stages {

        stage('Checkout') {
      steps {
        checkout scm
       sh 'mkdir -p creds'
       sh 'echo $SVC_ACCOUNT_KEY | base64 -d > ./creds/serviceaccount.json'    
      }
    }

   stage('TF Plan') {
       steps {
         container('terraform') {
           sh 'terraform init'
           sh 'terraform plan -out myplan'
         }
       }
     }
      
     stage('approval'){
        steps{ 
          script {
          def userInput = input(id: 'confirm', message: 'Apply Terraform?', parameters: [ [$class: 'BooleanParameterDefinition', defaultValue: false, description: 'Apply Terraform', name: 'confirm'] ])
            }
             }
          }
   
       stage('Terraform Apply') {
      steps {
        input 'Apply Plan'
        sh "terraform apply -input=false tfplan"
      }
    }

    stage('Ansible') {
            steps {
                echo 'Hello, Ansible'
               
            }
        }
    }
}
