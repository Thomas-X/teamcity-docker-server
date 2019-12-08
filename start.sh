mkdir dist
wget -o teamcity.tar.gz https://download-cf.jetbrains.com/teamcity/TeamCity-2019.1.5.tar.gz --show-progress
tar zxf teamcity.tar.gz -C dist/
rm -rf teamcity.tar.gz
docker image build -t teamcitypi:latest .
docker container run --name teamcitypi:latest