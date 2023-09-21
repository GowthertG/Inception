 sudo docker stop nginx-container
 sudo docker rm nginx-container
 sudo docker build -t engin-x-test .
 sudo docker run -d -p 8080:80 --name nginx-container engin-x-test
