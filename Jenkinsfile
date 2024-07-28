pipeline {
    agent { label 'workstation'}

    stages{
        stage('code Quality'){
            steps {
            sh 'sonar-scanner -Dsonar.host.url=http://172.31.81.125:9000 -Dsonar.login=admin -Dsonar.password=Canada1991$ -Dsonar.projectKey=frontend'
            }
        }
        stage('Release'){
            when {
                expression { TAG_NAME ==~ ".*" }
            }
            steps {
            sh 'env'
            }
            }
    }
}