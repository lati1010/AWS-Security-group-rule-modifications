echo 'a is new Port Number'
a=55
echo $a
echo 'b is New IP to Whitelist'
b=19.1.2.3
echo $b
echo 'c is Old Port Number'
c=1001
echo $c
echo 'd is Old IP to Blacklist'
d=2.22.221.22/2
echo $d
echo 'Updating the IP for WHITELIST'
echo ' '
sh /var/lib/jenkins/workspace/aws/AWS_Security_group_rule_update.sh $a $b $c $d
