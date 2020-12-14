echo 'a is new Port Number'
a=98
echo $a
echo 'b is New IP to Whitelist'
b=172.11.22.33/32
echo $b
echo 'c is Old Port Number'
c=55
echo $c
echo 'd is Old IP to Blacklist'
d=19.1.2.3/32
echo $d
echo 'Updating the IP for WHITELIST'
echo ' '
sh /var/lib/jenkins/workspace/aws/AWS_Security_group_rule_update.sh $a $b $c $d
