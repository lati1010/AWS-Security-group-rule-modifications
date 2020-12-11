#  a is new Port Number
a=8000
echo $a
#  b is New IP to Whitelist
b=11.22.22.1/32
echo $b
#  c is Old Port Number
c=10
echo $c
#  d is Old IP to Blacklist
d=10.10.10.10/32
echo $d

sh /var/lib/jenkins/workspace/aws/AWS_Security_group_rule_update.sh $a $b '$c' '$d'
