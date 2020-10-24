#!/usr/bin/env bash

set -o errexit
set -o nounset
set -o pipefail

IDEA_EXECUTABLE="$HOME/.local/bin/idea"
EDITOR_EXECUTABLE="code-oss"
DEVELOPMENT_DIR="$HOME/development"
PROJECT_DIRS=("studia/origami" "projects/java")

projects=""

for project_dir in ${PROJECT_DIRS[@]}; do
	echo "$project_dir"
	project_folders=$(find "${DEVELOPMENT_DIR}/${project_dir}/" -maxdepth 1 -mindepth 1 -type d -printf "${project_dir}/%P\n")
	projects="${projects}${project_folders}"
	echo "$projects"
done

function run() {
	directory="${DEVELOPMENT_DIR}/$1"

	jvm_project_file="$(find $directory -maxdepth 1 -name 'build.sbt' -o -name 'pom.xml' -print -quit)"
	is_idea_project="$(find $directory -maxdepth 1 -name '.idea' -o -name '*.iml' -print -quit)"
	if [ -n "${is_idea_project}" ]; then
		$IDEA_EXECUTABLE ${directory}
	elif [ -n "${jvm_project_file}" ]; then
		$IDEA_EXECUTABLE ${jvm_project_file}
	else
		$EDITOR_EXECUTABLE ${directory}
	fi
}

chosen=$(echo "$projects" | wofi --show dmenu -i)
run $chosen

