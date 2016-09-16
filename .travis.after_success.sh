#!/bin/bash

if [ "$TRAVIS_BRANCH" = "master" ]
then
	cd vaadin-context-menu-addon
	mvn deploy --settings ../.travis-settings.xml -DrepositoryId=vaadin-snapshots -DaltDeploymentRepository=vaadin-snapshots::default::https://oss.sonatype.org/content/repositories/vaadin-snapshots/ -DskipTests=true -DskipITs -B
fi

