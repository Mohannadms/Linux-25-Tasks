sudo useradd -m alice
sudo useradd -m bob
sudo groupadd project_group
sudo usermod -a -G project_group alice
sudo usermod -a -G project_group bob
zip files.zip files
sudo chown alice:project_group files.zip
sudo chmod 640 files.zip
