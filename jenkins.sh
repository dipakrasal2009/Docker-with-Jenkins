#git clone git@github.com:dipakrasal2009/Docker-with-Jenkins.git
cd Docker-with-Jenkins

docker build -t dockerjenkins:v3 .

docker run -it dockerjenkins:v3
