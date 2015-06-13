#!/bin/bash
echo USAGE: mvn_create groupId artifactId package
mvn -B archetype:generate -DarchetypeGroupId=it.seralf.development -DarchetypeArtifactId=maven-scala-java-archetype -DarchetypeVersion=0.0.1-SNAPSHOT -DgroupId=$1 -DartifactId=$2 -Dpackage=$3


