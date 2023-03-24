pipeline {
  agent { label 'linux'}
  options {
    skipDefaultCheckout(true)
  }
  stages{
    stage('clean workspace') {
      steps {
        cleanWs()
      }
    }
    stage('checkout') {
      steps {
        checkout scm
      }
    }
    stage('terraform init') {
      steps {
        sh "chmod +x -R ${env.WORKSPACE}"
        sh './terraformw init -backend-config="access_key=AKIATELYXRMPAUHGIYM5" -backend-config="secret_key=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" -backend-config="region=us-east-1" -no-color'
      }
    }
    stage('terraform plan') {
      steps {
        sh "chmod +x -R ${env.WORKSPACE}"
        sh './terraformw plan -no-color'
      }
    }
    stage('terraform apply') {
      steps {
        sh "chmod +x -R ${env.WORKSPACE}"
        sh './terraformw apply -auto-approve -no-color'
      }
    }
  }
  post {
    always {
      cleanWs()
    }
  }
}
