## Simple App

- Create EC2 instance
    - t2.micro
    - Linux 3
    - SSH port 22 , HTTP 80
- Create permissions and policies
- Connect to EC2

- Install ngnx and configure it
    1. `$ sudo su -` switch to root user
    2. `$ yum install nginx -y` install NGINX
    3. `$ systemctl start nginx` start NGINX
    4. `$ systemctl enable nginx` NGINX will be started when booting the EC2
    5. `$ cd /etc/nginx/conf.d` Get inside the correct directory
    6. `$ sudo touch node-app.conf` create new conf file 
    7. `$ vi node-app.conf` to enable editing
    8. `$vi node-app.conf`, add the following configuration into the file
    ```
        server {
            listen 80;
            server_name 3.72.62.128/; # public ip adresa

            location / {
                proxy_pass http://127.0.0.1:8008; # localhost 127.0.0.1 na portu 8008 kako je navedeno u app konfiguraciji
                proxy_http_version 1.1;
                proxy_set_header Upgrade $http_upgrade;
                proxy_set_header Connection 'upgrade';
                proxy_set_header Host $host;
                proxy_cache_bypass $http_upgrade;
            }
        }
    ```
    9. `$ sudo systemctl restart nginx` restart nginx
    10. Check if it is running `$ ps aux | grep nginx`

