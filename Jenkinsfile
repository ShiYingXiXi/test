pipeline {

  agent any

    // 设置全局变量
    environment {
        MyEnv = "Test"
    }

    stages{
        stage('Run'){
            steps {
                sh 'pwd; ls -al; echo "$MyEnv"'
                sh '$base_workspace'
            }
        }
    }
}