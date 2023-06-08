# Connect to the EC2 instance via SSH
ssh -i <PATH_TO_KEY_PAIR> <USERNAME>@<EC2_PUBLIC_IP>

# Install Node.js and Angular CLI
curl -sL https://deb.nodesource.com/setup_14.x | sudo -E bash -
sudo apt-get install -y nodejs
sudo npm install -g @angular/cli

# Install Python and PostgreSQL
sudo apt-get install -y python3 python3-pip
sudo apt-get install -y postgresql postgresql-contrib
