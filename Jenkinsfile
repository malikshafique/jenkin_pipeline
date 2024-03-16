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
        echo("building stage")
        echo "build Version ${NEW_VERSION}"
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
}
