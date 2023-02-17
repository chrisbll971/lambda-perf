DIR_NAME="./runtimes/$1"
rm ${DIR_NAME}/code.zip 2> /dev/null

docker build ${DIR_NAME} -t maxday/java11-snapstart
dockerId=$(docker create maxday/java11-snapstart)
docker cp $dockerId:/code.zip ${DIR_NAME}/code.zip