
maven-scala-java
================

A playground Maven Scala/Java project

The idea is to create a simple boilerplate project/template to simplify the creation of new project with cross-compilation of both Java and Scala code.

**NOTE**: sbt already handle the cross-compilation by default, no matter if the maven conventions are used.


----

## local installation
```bash
$ mvn install
```


## TODO

- [ ] refactorization
- [ ] add examples of test using JUnit and ScalaTest
- [ ] move the archetype creation idea in a specific folder / project module
- [ ] think about publishing the artifact somewhere in order to use the option 
`-DarchetypeRepository=http://host/maven/repository/`

## creating a maven archetype

1. creating the archetype
```bash
$ mvn archetype:create-from-project
```
2. local publishing of the the archetype
```bash
$ cd target/generated-sources/archetype/
$ mvn install
```
## example: creating a new project, based on the local archetype
```bash
$ mvn -B archetype:generate \
 -DarchetypeGroupId=it.seralf.development \
 -DarchetypeArtifactId=maven-scala-java-archetype \
 -DarchetypeVersion=0.0.1-SNAPSHOT \
 -DgroupId=it.seralf.examples \
 -DartifactId=example-app \
 -Dpackage=it.seralf.development.example

$ mvn -B archetype:generate -DarchetypeGroupId=it.seralf.development -DarchetypeArtifactId=maven-scala-java-archetype -DarchetypeVersion=0.0.1-SNAPSHOT -DgroupId=it.seralf.web -DartifactId=webask -Dpackage=it.seralf.webask
```

There is also a small, simple script:
```
./mvn_create.sh groupId artifactId package
```
