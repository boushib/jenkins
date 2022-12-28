/* groovylint-disable-next-line CompileStatic */
pipeline {
  agent any
  stages {
    stage('Build') {
      steps {
        sh '''
          pip3 install -r requirements.txt
          echo "Building..."
        '''
      }
    }
    stage('Test') {
      steps {
        sh '''
          echo "Testing..."
          python app.py --name=Jenkins
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
