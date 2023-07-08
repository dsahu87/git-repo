pipeline {
    agent {
        docker {
            image 'httpd:latest'
            args '-p 82:80'
        }
    }
    
    stages {
        stage('Build and Publish') {
            when {
                anyOf {
                    branch 'master'
                    branch 'develop'
                }
            }
            steps {
                checkout scm
                script {
                    if (env.BRANCH_NAME == 'master') {
                        // Build and publish website on port 82
                        sh 'mvn clean install'
                        sh 'cp -R target/* /var/www/html'
                        sh 'service apache2 start'
                    } else if (env.BRANCH_NAME == 'develop') {
                        // Only build for the develop branch
                        sh 'mvn clean install'
                    }
                }
            }
        }
    }
}
