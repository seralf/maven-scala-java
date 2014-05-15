maven-scala-java
================

playground Maven Scala/Java project

The idea is to create a simple boilerplate project/template to simplify the creation of new project with cross-compilation of both Java and Scala code.

NOTE: sbt already handle the cross-compilation by default, no matter if the maven conventions are used.

================


TODO

1) refactorization
2) add examples of test using JUnit and ScalaTest
3) move archetype in a specific folder/project


# maven archetype

1. archetype creation:

>> mvn archetype:create-from-project

2. location of the archetype

target/generated-sources/archetype/target/maven-scala-java-archetype-*.jar

