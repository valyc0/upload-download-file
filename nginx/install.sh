docker run -d \
 -p 8065:80 \
 --name nginx-test  \
 -v  $PWD/conf:/etc/nginx/conf.d \
 -v  $PWD/build:/var/www \
 nginx
