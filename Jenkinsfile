pipeline {
    agent any
    stages{
        stage('Build'){
            steps{
                sh 'echo "build complated"'

            }
        }

        stage('Prepare SSH Known Hosts') { 
            steps {
                 sh ''' mkdir -p ~/.ssh ssh-keyscan github.com >> ~/.ssh/known_hosts 
                 ''' 
            } 
        }
    }
}