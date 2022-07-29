HOME_DIR="$PWD"

cd spring-boot-upload-multipart-files/
nohup mvn spring-boot:run &
cd $HOME_DIR
rm -rf ./nginx/build
cd react-multiple-files-upload/
yarn install
yarn build
cp -r ./build ../nginx/

cd $HOME_DIR
cd nginx/
nohup ./install.sh &

docker restart nginx-test
