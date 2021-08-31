<project xmlns="http://maven.apache.org/POM/4.0.0" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:schemaLocation="http://maven.apache.org/POM/4.0.0 http://maven.apache.org/maven-v4_0_0.xsd">
	<modelVersion>4.0.0</modelVersion>
	<parent>
		<groupId>org.jenkins-ci.plugins</groupId>
		<artifactId>plugin</artifactId>
		<version>4.16</version>
		<relativePath />
	</parent>

	<groupId>io.jenkins.plugins</groupId>
	<artifactId>lucene-search</artifactId>
	<version>5.1</version>
	<packaging>hpi</packaging>
	<properties>
		<lucene.version>5.3.1</lucene.version>
		<solr.version>5.3.1</solr.version>
		<junit.version>1.9</junit.version>
		<java.level>8</java.level>
		<gitHubRepo>jenkinsci/lucene-search-plugin</gitHubRepo>
		<maven.version>3.6.3</maven.version>
	</properties>

	<!-- Jenkins plugin config -->
	<name>Lucene-Search</name>
	<url>https://wiki.jenkins-ci.org/display/JENKINS/Lucene-Search</url>
	<scm>
		<connection>scm:git:git://github.com/jenkinsci/lucene-search-plugin</connection>
		<developerConnection>scm:git:git@github.com:jenkinsci/lucene-search-plugin</developerConnection>
		<tag>lucene-search-5.1</tag>
	</scm>
	<developers>
		<developer>
			<id>hmarkc</id>
			<name>Mark Chen</name>
			<email>a77069752@gmail.com</email>
		</developer>
		<developer>
			<id>tobias-</id>
			<name>Tobias Olsson</name>
			<email>tobias@olsson.be</email>
		</developer>
		<developer>
			<id>hanabishi</id>
			<name>Marcus Jacobsson</name>
			<email>jenkins@hanabi.se</email>
		</developer>
	</developers>

	<licenses>
		<license>
			<name>MIT License</name>
			<url>http://opensource.org/licenses/MIT</url>
		</license>
	</licenses>

	<dependencies>
		<dependency>
			<groupId>org.jenkins-ci.plugins</groupId>
			<artifactId>junit</artifactId>
			<version>${junit.version}</version>
			<optional>false</optional>
		</dependency>
		<dependency>
			<groupId>org.apache.lucene</groupId>
			<artifactId>lucene-core</artifactId>
			<version>${lucene.version}</version>
		</dependency>
		<dependency>
			<groupId>org.apache.lucene</groupId>
			<artifactId>lucene-analyzers-common</artifactId>
			<version>${lucene.version}</version>
		</dependency>
		<dependency>
			<groupId>org.apache.lucene</groupId>
			<artifactId>lucene-queryparser</artifactId>
			<version>${lucene.version}</version>
		</dependency>
		<dependency>
			<groupId>org.apache.lucene</groupId>
			<artifactId>lucene-highlighter</artifactId>
			<version>${lucene.version}</version>
		</dependency>
		<dependency>
			<groupId>org.apache.solr</groupId>
			<artifactId>solr-solrj</artifactId>
			<version>${solr.version}</version>
		</dependency>
		<dependency>
			<groupId>com.google.code.gson</groupId>
			<artifactId>gson</artifactId>
			<version>2.2.4</version>
			<scope>test</scope>
		</dependency>
	</dependencies>

	<!-- get every artifact through repo.jenkins-ci.org, which proxies all the
		artifacts that we need -->
	<repositories>
		<repository>
			<id>repo.jenkins-ci.org</id>
			<url>http://repo.jenkins-ci.org/public/</url>
		</repository>
	</repositories>

	<pluginRepositories>
		<pluginRepository>
			<id>repo.jenkins-ci.org</id>
			<url>http://repo.jenkins-ci.org/public/</url>
		</pluginRepository>
	</pluginRepositories>
</project>