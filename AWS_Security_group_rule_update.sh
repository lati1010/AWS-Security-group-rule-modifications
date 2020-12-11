aws ec2 revoke-security-group-ingress --group-name default --protocol tcp --port $1 --cidr $2
aws ec2 authorize-security-group-ingress --group-name default --protocol tcp --port $3 --cidr $4
aws ec2 describe-security-groups --group-name default --output text
