pipeline {
    agent { label 'workstation'}

    stages{
        stage('code Quality'){
        when {
                        expression { env.TAG_NAME != env.BRANCH_NAME }
                        }
         steps {
            sh 'sonar-scanner -Dsonar.host.url=http://172.31.81.125:9000 -Dsonar.login=admin -Dsonar.password=Canada1991$ -Dsonar.projectKey=frontend'
        }
        }

        stage('Release'){
        when {
                expression { env.TAG_NAME ==~ ".*" }
                }
         steps {
         sh 'env'
         echo 'CI'
         }
         }
    }
    }


//
//     when {
//              allOf{
//              branch 'main'
//                   expression {env.GIT_BRANCH == 'origin/main'}
//                   expression { env.TAG_NAME != env.BRANCH_NAME }
//                         }
//                     }
//   when{
//         allOf{
//             expression {env.GIT_BRANCH == 'origin/main'}
//         }
//
//          when {
//                         expression { env.TAG_NAME ==~ ".*" }
//                     }