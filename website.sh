sudo apt install wget unzip apache2 -y > /dev/null

sudo systemctl install apache2
sudo systemctl eneable apache2

wget https://www.tooplate.com/zip-templates/2137_barista_cafe.zip

unzip 2137_barista_cafe.zip > /dev/null

sudo cp -r 2137_barista_cafe/* /var/www/html

sudo systemctl restart apache2
