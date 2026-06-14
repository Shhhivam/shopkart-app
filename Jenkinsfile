pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                sh 'chmod +x app.sh'
                sh './app.sh'
            }
        }
    }
}