pipeline {

  agent any

    // 设置全局变量
    environment {
        MyEnv = 'Test'
        WORKSPACE = '/var/jenkins_home/workspace/test_master'
        JMETER_BIN = '/var/jenkins_home/apache-jmeter-5.6.3/bin'
        JMETER_HOME = '/var/jenkins_home/apache-jmeter-5.6.3'
    }

    stages{
        stage('Run'){
            steps {
                sh 'sh ${WORKSPACE}/test.sh'
            }
        }
    }
}