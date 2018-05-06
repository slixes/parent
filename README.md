##Releasing to OSSRSH

Use the following two options to release:

**Release using the Nexus Staging Plugin:**

 - Set a version

  `mvn versions:set -DnewVersion=X`

 - Deploy using mvn deploy

  `mvn clean deploy -Prelease`

 or
 - Deploy using the nexus staging plugin   

  `mvn nexus-staging:release -Prelease`

Note: You will have to deal with tagging separately


**Release using the Maven Release Plugin:**

 - Prepare the release:
 
   `mvn release:prepare -Dresume=false -Possrh -Prelease -Pbuild-extras`

- Perform the release:
 
   `mvn release:perform -Dresume=false -Possrh -Prelease -Pbuild-extras`
    
4