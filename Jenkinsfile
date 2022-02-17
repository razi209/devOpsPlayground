pipeline {
    agent any
     environment {
       DockerUrl = '352708296901.dkr.ecr.us-east-1.amazonaws.com'

        }

    stages {
        stage('Build Simple Webserver') {
        when { anyOf {branch "master" ; branch "dev"}}
            steps {
                echo 'Building..'
                sh '''
                 IMAGE="simple_webserver.razi:${BRANCH_NAME}_${BUILD_NUMBER}"
                     cd simple_webserver
                  aws ecr get-login-password --region us-east-1 | docker login --username AWS --password-stdin ${DockerUrl}
                  docker build -t simple_webserver.razi .
                  docker tag ${IMAGE} ${DockerUrl}/${IMAGE}
                  docker push ${DockerUrl}/${IMAGE}

                    '''


            }
        }
        stage('Test') {
            steps {
                echo 'Testing..'
            }
        }
        stage('Deploy') {
            steps {
                echo 'Deploying....'
            }
        }
    }
}

