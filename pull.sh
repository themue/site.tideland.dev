#!/bin/sh
HOST="https://github.com/tideland"
REPOSITORIES="go.git"
DESTINATION="/var/www/localhost/htdocs"

GIT=git
GIT_CLONE_ARGS="clone --mirror"
GIT_FETCH_ARGS="fetch -p origin"
GIT_UPDATE_ARGS="update-server-info"

for REPOSITORY in ${REPOSITORIES}
do
	cd ${DESTINATION}

	if [[ ! -d ${REPOSITORY}/ ]]	
	then
		${GIT} ${GIT_CLONE_ARGS} ${HOST}/${REPOSITORY}
	fi

	cd ${REPOSITORY}

	${GIT} ${GIT_FETCH_ARGS}
	${GIT} ${GIT_UPDATE_ARGS}
done
# EOF
