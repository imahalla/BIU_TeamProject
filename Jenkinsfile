pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                sh 'pwd'
                // sh 'cd /var/lib/jenkins/workspace/project_pipeline/frontend && docker build -t front:v1 .'
                // sh 'cd ..'
                // sh 'cd server && docker build -t server:v1 .'
                // sh 'cd ..'
                sh 'docker images'
            }
        }
        stage('Run images') {
            steps {
                sh 'docker run -d -p3000:3000 front:v1'
                sh 'sleep 8'
                sh 'docker run -d -p3001:3001 server:v1'
                sh 'sleep 5'
            }
        }
        stage('Test') {
            steps {
                sh 'pwd'
                sh 'python3 -m pytest --junitxml=test-results.xml test/test.py'
            }
            
        }
        // stage('Publish test results') {
        //     steps {
        //         junit 'test-results.xml'
        //     }
        // }
        stage('Deploy') {
            steps {
                echo 'Deploying....'
            }
        }
        stage('Remove images') {
            steps {
                sh 'docker kill $(docker ps -q)'
                sh 'echo docker rmi -f front:v1'
                sh 'echo docker rmi -f server:v1'
            }
        }
    }
}