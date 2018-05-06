Set a version

mvn clean deploy -Prelease
mvn nexus-staging:release -Prelease
