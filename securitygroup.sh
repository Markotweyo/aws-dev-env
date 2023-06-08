# Create a security group
aws ec2 create-security-group --group-name <SECURITY_GROUP_NAME> --description "Security group for Angular and Python"

# Add inbound rules to the security group
aws ec2 authorize-security-group-ingress --group-id <SECURITY_GROUP_ID> --protocol tcp --port 80 --cidr 0.0.0.0/0
aws ec2 authorize-security-group-ingress --group-id <SECURITY_GROUP_ID> --protocol tcp --port 22 --cidr <YOUR_IP_ADDRESS>/32
# Add any additional inbound rules as required
