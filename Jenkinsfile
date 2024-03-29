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
                sh 'pwd; ls -al; echo "$MyEnv"; echo "$WORKSPACE"; python3 "${WORKSPACE}/test.py"'
                // sh 'python3 "${Workspace}/test.py"'
            }
        }
    }
}