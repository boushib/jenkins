/* groovylint-disable Indentation */
/* groovylint-disable-next-line CompileStatic */
pipeline {
  agent any
  stages {
    stage('Build') {
      steps {
        sh '''
          echo "Building..."

          curl -fsSLO https://download.docker.com/linux/static/stable/x86_64/docker-20.10.9.tgz \
          && tar xzvf docker-20.10.9.tgz \
          && mv docker/docker /usr/local/bin \
          && rm -r docker docker-20.10.9.tgz

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
