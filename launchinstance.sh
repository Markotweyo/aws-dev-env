# Launch an EC2 instance using AWS CLI
aws ec2 run-instances --image-id <AMI_ID> --instance-type <INSTANCE_TYPE> --key-name <KEY_PAIR_NAME> --security-group-ids <SECURITY_GROUP_ID> --subnet-id <SUBNET_ID> --associate-public-ip-address
