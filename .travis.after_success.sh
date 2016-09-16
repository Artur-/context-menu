#!/bin/bash

echo "SONATYPE_USERNAME: $SONATYPE_USERNAME"

if [ "$TRAVIS_BRANCH" = "master" ] && [ "$TRAVIS_SECURE_ENV_VARS" = "true" ]
then
	cd vaadin-context-menu-addon
	mvn deploy --settings ../.travis-settings.xml -DrepositoryId=vaadin-snapshots -DaltDeploymentRepository=vaadin-snapshots::default::https://oss.sonatype.org/content/repositories/vaadin-snapshots/ -DskipTests=true -DskipITs -B
fi

