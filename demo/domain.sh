search demo.svc.cluster.local svc.cluster.local cluster.local

#方式一
wget spring-boot-demo-svc.demo.svc.cluster.local:8090

#方式二
wget spring-boot-demo-svc.demo.svc.cluster.local:8090

#方式三
wget spring-boot-demo-svc.demo.cluster.local:8090


#
curl -H Host:spring-boot-demo.zcrjjh.com http://192.168.215.21/

curl http://spring-boot-demo.zcrjjh.com:8090
curl http://whoami.zcrjjh.com:32286/notls

curl http://spring-boot-demo.zcrjjh.com
curl http://whoami.zcrjjh.com/notls

#在Linux系统里查询DNS使用如下命令
dig baidu.com @114.114.114.114

#或者使用系统默认的DNS服务器查询
nslookup spring-boot-demo.zcrjjh.com
nslookup whoami.zcrjjh.com
#重启网络
sudo systemctl restart NetworkManager


#防火墙
firewall-cmd --add-masquerade --permanent

firewall-cmd --reload

firewall-cmd --list-all --zone=public

firewall-cmd --permanent --zone="public" --add-rich-rule='rule family='ipv4" source address="192.168.48.0/24" port protocol="tcp" port="1-65535' accept'
