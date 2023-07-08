pipeline {
    agent any
    
    stages {
        stage('Pull Git Content') {
            steps {
                git branch: 'master', url: 'https://github.com/dsahu87/git-repo.git'
                sh 'cp -r * /var/www/html'
            }
        }
        
        // Add additional stages as needed for your pipeline steps
        // For example, you can include stages for building, testing, deploying, etc.
    }
}
