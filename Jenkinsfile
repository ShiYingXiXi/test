pipeline {

  agent any

    // 设置全局变量
    environment {
        MyEnv = 'Test'
        WORKSPACE = '/var/jenkins_home/workspace/test_master'
    }

    stages{
        stage('Run'){
            steps {
                sh 'sh ${Workspace}/test.sh'
            }
        }
    }
}