!env/bin/bash

BASEDIR="/home/shivam/workspace/projects/shivamgupta211.github.io"

if [ -d ${BASEDIR}/dist ]
then
    rm -R "${BASEDIR}/dist"
fi

echo "creating dist folder"
mkdir "${BASEDIR}/dist"
chmod +x "${BASEDIR}/dist"
mkdir "${BASEDIR}/dist/blog"
# mkdir "${BASEDIR}/dist/resume"

echo "building hugo static files "
cd "${BASEDIR}/hugo/blog" && hugo && cp -a ./public/* "${BASEDIR}/dist/blog"
cd "${BASEDIR}/hugo/resume" && hugo && cp -a ./public/* "${BASEDIR}/dist/"

sleep 1s