pipeline {
    agent any
    
    stages {
        stage('Checkout SCM') {
            steps {
                checkout scm
            }
        }
        
        stage('Pull Git Content') {
            steps {
                bat 'git pull origin master'
            }
        }
        
        stage('Build and Publish') {
            steps {
                bat 'xcopy /E /I * "C:\\ProgramData\\Jenkins\\workspace\\Push to Prod"'
            }
        }
        
        stage('Test Website') {
            steps {
                // Add your test steps here
            }
        }
    }
}
