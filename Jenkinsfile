pipeline {
    agent any
    tools {
        nodejs 'nodejs'
    }
    environment {
        // Get the current date and time when the pipeline starts
        CURRENT_DATETIME = sh(returnStdout: true, script: 'date +%Y%m%d-%H%M%S').trim()
    }
    stages {
        stage('print versions') {
            steps {
                sh 'npm --version'
            }
        }
        stage('Install') {
            steps {
                sh 'npm install'
            }
        }
        stage('Build') {
            steps {
                sh 'npm run build'
            }
        }
        stage('codeDeploy'){
            steps {
                step([$class: 'AWSCodeDeployPublisher', applicationName: 'tmovie-project', awsAccessKey: '', awsSecretKey: '', deploymentGroupAppspec: false, deploymentGroupName: 'movie-deployment-group', excludes: '', iamRoleArn: '', includes: 'dist/', proxyHost: '', proxyPort: 0, region: 'ap-south-1', s3bucket: 'tmovie-artifact ', s3prefix: '', subdirectory: '', versionFileName: '', waitForCompletion: false])
            }
        }
    }
}
