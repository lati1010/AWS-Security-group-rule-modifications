echo 'a is new Port Number'
a=1001
echo $a
echo 'b is New IP to Whitelist'
b=2.22.221.22/22
echo $b
echo 'c is Old Port Number'
c=9000
echo $c
echo 'd is Old IP to Blacklist'
d=10.20.30.40/32
echo $d
echo ''
echo ' '

echo 'Updating the IP for WHITELIST'
echo ' '
sh /var/lib/jenkins/workspace/aws/AWS_Security_group_rule_update.sh $a $b $c $d
