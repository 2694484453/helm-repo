#! /bin/bash
chmod +x ./git-ssh.sh
# shellcheck disable=SC1035
# shellcheck disable=SC1019
# shellcheck disable=SC1072
# shellcheck disable=SC1073
# shellcheck disable=SC1020
# shellcheck disable=SC1009
# shellcheck disable=SC2005
# shellcheck disable=SC2077
# shellcheck disable=SC2046
#tips
# git config --system --unset credential.helper #清除本地的gite用户名和密码
# git日志输出到当前文件夹内的logfile.txt文件

#收集参数
ideUserName=$1 #用户名
echo "ideUserName：$ideUserName"
gitConfigUserName=$2 #git用户名
echo "gitConfigUserName：$gitConfigUserName"
gitConfigUserEmail=$3 #git用户邮箱
echo "gitConfigUserEmail：$gitConfigUserEmail"
gitAddress=$4 #用户名加密码拼接
echo "gitAddress：$gitAddress"
projectName=$(basename ${gitAddress} .git) #项目名
echo "projectName:$projectName"

echo "###################### run git config ################################"
# 如果有参数输入（非空字符），则进行设置git信息
if [ "$gitConfigUserName" != "" ] && [ "$gitConfigUserEmail" != "" ]; then
    echo -e `date '+%Y-%m-%d %H:%M:%S %A:'` "Start setting git global configuration..."
    git config --global user.name "$gitConfigUserName" #用户名
    git config --global user.email "$gitConfigUserEmail" #邮箱
    #查看结果
    echo -e `date '+%Y-%m-%d %H:%M:%S %A:'` "The git global configuration result is :"
    echo $(git config user.name)
    echo $(git config user.email)
    echo -e `date '+%Y-%m-%d %H:%M:%S %A:'` "Git global configuration has done..."
else
    echo -e `date '+%Y-%m-%d %H:%M:%S %A:'` "There is no git configuration values, The git global configuration has been skipped!"
fi

# 判断本地是否有文件夹存在，如果没有则进行克隆
if [ ! -d "/home/ide/$ideUserName/$projectName/" ];then
  echo -e `date '+%Y-%m-%d %H:%M:%S %A:'` "Start cloning $projectName use $gitAddress"
  cd /home/ide/"$ideUserName" && git clone "$gitAddress" #克隆
  echo -e `date '+%Y-%m-%d %H:%M:%S %A:'` "Git clone has been done..."
else
  echo -e `date '+%Y-%m-%d %H:%M:%S %A:'` "Clone failed! The same project folder already exists, git cannot clone your project!" #有项目文件夹则不克隆
fi

echo "###################### git config done #################################"
#公有
# ./git.sh gaopuguang gaopuguang_zz 2694484453@qq.com https://@gitee.com/gpg-dev/ruoyi-vue-pro.git >>/home/ide/gaopuguang/logfile.txt 2>&1
#私有
# ./git.sh gaopuguang gaopuguang_zz 2694484453@qq.com https://18439406854:1999y4m30d@gitee.com/gpg-dev/docker-app.git >>logfile.txt 2>&1

# 不设置用户名和邮箱情况
# ./git.sh gaopuguang '' '' https://18439406854:1999y4m30d@gitee.com/gpg-dev/docker-app.git >>logfile.txt 2>&1
# ./git.sh gaopuguang "" "" https://18439406854:1999y4m30d@gitee.com/gpg-dev/docker-app.git >>logfile.txt 2>&1
# ./git.sh gaopuguang "" "" https://@gitee.com/gpg-dev/ruoyi-vue-pro.git >>logfile.txt 2>&1



#git-lab项目克隆测试
#git clone http://test1212:test1212@zdx2022@192.168.184.25/obof1f/testHouDua40866-api.git

#编码克隆测试
#git clone http://test1212:test1212%40zdx2022@192.168.184.25/obof1f/testHouDua40866-api.git


# https://gitee.com/gpg-dev/ruoyi-vue-pro.git  https://gitee.com/gpg-dev/docker-app.git https://@gitee.com/gpg-dev/ruoyi-vue-pro.git
# res=$(git config user.name)
# echo $res

# http://test1212:12122023%40zdx2022@192.168.184.25/test1212/gddemo.git

#accessToken
#git clone https://oauth2:access_token@github.com/username/xxx.git
#http://192.168.184.25/m0iu69/a0112XiangM09376.git
# 8ogsVFgXtCvsfX1q9JCj
#git clone http://oauth2:8ogsVFgXtCvsfX1q9JCj@192.168.184.25/m0iu69/a0112XiangM09376.git

#AXHGCnrarmjgFrSCiDaj
#git clone http://oauth2:AXHGCnrarmjgFrSCiDaj@192.168.184.25/m0iu69/a0112XiangM09376.git
#
# git clone http://lizilongkfz:lizilongkfz%40zdx2022@192.168.184.25/zdf-kfpt/ms/micro-service-web.git
#git clone http://oauth2:AXHGCnrarmjgFrSCiDaj@192.168.184.25/j20geh/JiChuQianD03260.git
#git clone http://test1212:12122023%40zdx2022@gitlab.ctbiyi.com/j20geh/JiChuQianD03260.git
#git clone http://test1212:12122023%40zdx2022@192.168.184.25/testcpp/zutestcpp.git
# http://test1212:12122023%40zdx2022@192.168.184.25/testcpp/zutestcpp.git
