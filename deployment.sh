systemctl restart postgresql
#Deployment File
BASE_PATH="/root/web/odoo"
cd ${BASE_PATH}
#activate Virtual Env
source ${BASE_PATH}/odoo-17-env/bin/activate
# Pull Source code
git pull

# Install python required files
pip install -r ${BASE_PATH}/requirements.txt

# RUN APPLICATION
python odoo-bin -c "/root/web/odoo/conf/odoo.prod.conf" -d odoottf