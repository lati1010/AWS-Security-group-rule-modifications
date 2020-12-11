echo 'a is new Port Number'
a=99
echo $a
echo 'b is New IP to Whitelist'
b=172.11.22.33/32
echo $b
echo 'c is Old Port Number'
c=1001
echo $c
echo 'd is Old IP to Blacklist'
d=2.22.220.0/22
echo $d
echo 'Updating the IP for WHITELIST'
echo ' '
sh /var/lib/jenkins/workspace/aws/AWS_Security_group_rule_update.sh $a $b $c $d
