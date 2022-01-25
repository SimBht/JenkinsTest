pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                echo 'Building..'
                sh("make target")
            }
        }
        stage('Test') {
            steps {
                echo 'Testing..'
            }
        }
        stage('Run') {
            steps {
                sh("./Target")
            }
        }
    }
}
