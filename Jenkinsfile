pipeline {

  agent any

    // 设置全局变量
    environment {
        MyEnv = "Test"
        Workspace = "/var/jenkins_home/workspace/test_master"
    }

    stages{
        stage('Run'){
            steps {
                sh 'pwd; ls -al; echo "$MyEnv"'
                sh 'python3 "${Workspace}/test.py"'
            }
        }
    }
}