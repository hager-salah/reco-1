pipeline{
    agent {
        label 'docker'
    }
    stages{
        stage('Build Docker Image'){
            steps{
              sh  ' docker build -t hagerelhalaby/docker-reco -f Dockerfile.dev .'
            }
        }
        stage('Run Tests'){
            steps{
                script{
                    env.Docker_BUILDIT = 1
        
                sh 'docker run -e CI=true hagerelhalaby/docker-reco npm run test'
                }
            }
        }
    }
}
