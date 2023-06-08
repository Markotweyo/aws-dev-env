# Create a new PostgreSQL database
sudo -u postgres createdb <DATABASE_NAME>

# Set a password for the default "postgres" user
sudo -u postgres psql -c "ALTER USER postgres WITH PASSWORD '<PASSWORD>';"

# Create necessary tables and schema
python manage.py migrate
