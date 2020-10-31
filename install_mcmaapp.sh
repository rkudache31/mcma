
mkdir mcmacodedir
cd  mcmacodedir
git clone https://github.com/rkudache31/mcma.git

apt-get install -y unzip
unzip mcmacode.zip
cd mcma

sudo get -qO - https://www.mongodb.org/static/pgp/server-4.4.asc | sudo apt-key add -
sudo apt-get install -y gnupg
wget -qO - https://www.mongodb.org/static/pgp/server-4.4.asc | sudo apt-key add -
echo "deb [ arch=amd64,arm64,s390x ] http://repo.mongodb.com/apt/ubuntu bionic/mongodb-enterprise/4.4 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-enterprise.list
sudo apt-get update
sudo apt-get install -y mongodb-enterprise
sudo apt install -y nodejs
sudo apt  install  -y npm
sudo apt install -y python3-pip
sudo pip3 install pymongo
sudo pip3 install flask
sudo pip3 install flask_cors
sudo pip3 install pandas
sudo pip3 install flask_mail
sudo pip3 install pycountry
sudo service  mongod start

sed -i 's/18.191.158.237/104.211.118.154/g' /home/mcmaadmin/mcmacodedir/mcma/mCMA-codebase/mcma-UI/src/environments/environment.prod.ts
sed -i 's/18.219.223.111/104.211.118.154/g' /home/mcmaadmin/mcmacodedir/mcma/mCMA-codebase/mcma-UI/src/environments/environment.ts
sed -i 's/ng serve/ng serve --host 0.0.0.0/g' /home/mcmaadmin/mcmacodedir/mcma/mCMA-codebase/mcma-UI/package.json




