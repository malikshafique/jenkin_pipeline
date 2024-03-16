pipeline
{
  agent any
  environment{
    NEW_VERSION="1.0.1"
  }
  stages
  {
    
    stage("build")
    {
      steps{
        echo("building stage version ${NEW_VERSION}")
        bat 'npm install'
        bat 'ng build --configuration production'
      }
    }
    stage("test")
    {
      steps{
        echo("testing stage")
      }
    }
      stage("deploy")
    {
      steps{
        echo("deploy stage")
      }
    }
  
    
  }
  post {
        success {
            echo 'Build succeeded! Your Angular project is ready for deployment.'
            // You can add additional steps for deployment or notifications here
        }
        
        failure {
            echo 'Build failed! Please check the build logs for errors.'
            // You can add additional steps for error handling or notifications here
        }
    }
}
