if [ -z $1 ] 
then
echo "Please provide public ipaddres as argument E:g sh start.sh 104.211.118.154"
else
sudo service  mongod start
cd /var/lib/waagent/custom-script/download/0/mcma/mCMA-codebase/mcma_backend
nohup python3 /var/lib/waagent/custom-script/download/0/mcma/mCMA-codebase/mcma_backend/mcma_flask.py &
sed -i 's/18.191.158.237/$1/g' /var/lib/waagent/custom-script/download/0/mcma/mCMA-codebase/mcma-UI/src/environments/environment.prod.ts
sed -i 's/18.219.223.111/$1/g' /var/lib/waagent/custom-script/download/0/mcma/mCMA-codebase/mcma-UI/src/environments/environment.ts
sed -i 's/ng serve/ng serve --host 0.0.0.0/g' /var/lib/waagent/custom-script/download/0/mcma/mCMA-codebase/mcma-UI/package.json

cd /var/lib/waagent/custom-script/download/0/mcma/mCMA-codebase/mcma-UI
npm install
npm start
fi
