/* groovylint-disable Indentation */
/* groovylint-disable-next-line CompileStatic */
pipeline {
  agent any
  stages {
    stage('Build') {
      steps {
        sh '''
          echo "Building..."

          docker build --tag python-api .

          echo "Building complete!"
        '''
      }
    }
    stage('Test') {
      steps {
        sh '''
          echo "Testing..."
        '''
      }
    }
    stage('Deploy') {
      steps {
        sh '''
          echo "Deploying..."
        '''
      }
    }
  }
}
