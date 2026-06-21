pipeline {
    agent any

    stages {

        stage('Checkout Verification') {
            steps {
                sh 'pwd'
                sh 'ls -la'
            }
        }

        stage('Build') {
            steps {
                sh 'chmod +x app.sh'
                sh './app.sh'
            }
        }

        stage('Test') {
            steps {
                sh 'echo "Executing Automated Tests"'
                sh 'grep "TEST PASSED" app.sh'
            }
        }

        stage('Artifact Generation') {
            steps {
                sh 'ls -la build'
                sh 'cat build/shopkart-artifact.txt'
            }
        }
    }

    post {
        success {
            archiveArtifacts artifacts: 'build/*.txt'
            archiveArtifacts artifacts: 'build/*.html'
        }
    }
}