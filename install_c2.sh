alias beep='paplay /home/myserver/apm/res/nya.mp3'
clear
echo ""
echo ""
echo "60초 후 설치가 시작 됩니다."
echo "설치가 시작 되기 전 까지 아래 안내문구를 읽어 주시길 바랍니다."
echo ""
echo ""
echo ""
echo "=================================================================="
echo "우분투 웹 서버 구축 챕터2"
echo ""
echo "챕터1을 수행하지 않은 분 께서는 현재 창을 닫고,"
echo "이 스크립트를 되도록 실행 하지 마세요."
echo ""
echo "이 스크립트는 지정 된 계정 명이 아니면 동작 하지 않습니다."
echo "이 스크립트는 설정 파일 등을 교체 합니다."
echo ""
echo "이 스크립트의 사용에 의해 발생되는 문제 및 손실에 대한 책임은"
echo "사용자에게 있습니다."
echo ""
echo "스크립트 제작 : 최종원"
echo "https://wildcats.co.kr"
echo "=================================================================="
echo ""
echo ""
sleep 60
clear
echo ""
echo ""
echo "================================"
echo "패키지 목록을 갱신 합니다."
echo "================================"
echo ""
echo ""
sleep 5
sudo apt-get update
sleep 1
clear
echo ""
echo ""
echo "=================================================================="
echo "설치되어 있는 프로그램의 최신 패치를 진행 합니다.."
echo "=================================================================="
echo ""
echo ""
sleep 5
sudo apt-get upgrade -y
sleep 1
clear
echo ""
echo ""
echo "================================"
echo "Apache2 를 설치 합니다."
echo "================================"
echo ""
echo ""
sleep 5
sudo apt-get install apache2 -y
sleep 1
clear
echo ""
echo ""
echo "================================"
echo "모듈 설정을 변경 합니다."
echo "================================"
echo ""
echo ""
sleep 5
sudo a2enmod rewrite
sudo a2enmod headers
sudo a2enmod ssl
sudo a2dismod -f autoindex
sleep 1
clear
echo ""
echo ""
echo "================================"
echo "Apache2 설정을 변경 합니다."
echo "================================"
echo ""
echo ""
sleep 5
cp /home/myserver/apm/res/apache2.conf /etc/apache2/apache2.conf
sudo /etc/init.d/apache2 restart
sleep 1
clear
echo ""
echo ""
echo "================================"
echo "PHP7을 설치 합니다."
echo "================================"
echo ""
echo ""
sleep 5
sudo apt-get install php -y
sleep 1
clear
echo ""
echo ""
echo "====================================="
echo "Apache2-PHP 연동모듈을 설치합니다."
echo "====================================="
echo ""
echo ""
sleep 5
sudo apt-get install libapache2-mod-php7.0 
sleep 1
clear
echo ""
echo ""
echo "====================================="
echo "PHP 암호화 모듈을 설치합니다."
echo "====================================="
echo ""
echo ""
sleep 5
sudo apt-get install php-mcrypt -y
sleep 1
clear
echo ""
echo ""
echo "====================================="
echo "PHP 다국어 모듈을 설치합니다."
echo "====================================="
echo ""
echo ""
sleep 5
sudo apt-get install php-mbstring -y
sleep 1
clear
echo ""
echo ""
echo "====================================="
echo "PHP 이미지 처리 모듈을 설치합니다."
echo "====================================="
echo ""
echo ""
sleep 5
sudo apt-get install php-gd -y
sleep 1
clear
echo ""
echo ""
echo "====================================="
echo "PHP curl/xml 모듈을 설치합니다."
echo "====================================="
echo ""
echo ""
sleep 5
sudo apt-get install php-curl php-xml -y
sleep 1
sudo /etc/init.d/apache2 restart
sleep 1
clear
echo ""
echo ""
echo "====================================="
echo "MariaDB를 설치합니다."
echo "====================================="
echo ""
echo ""
sleep 5
sudo apt-get install mariadb-server -y
sleep 1
clear
beep
echo ""
echo ""
echo "========================================================="
echo "15초 후 MariaDB를 설정합니다."
echo "콘솔에서 요청하는 내용을 입력 후 엔터를 눌러주세요"
echo "비밀번호 관련된 설정 외의 다른 설정은 그냥 엔터를"
echo "누르셔도 관계 없습니다."
echo "========================================================="
echo ""
echo ""
sleep 15
sudo /usr/bin/mysql_secure_installation
sleep 1
clear
echo ""
echo ""
echo "====================================="
echo "PHP-MYSQL 연동 모듈을 설치합니다."
echo "====================================="
echo ""
echo ""
sleep 5
sudo apt-get install php-mysql -y
sleep 1
clear
echo ""
echo ""
echo "====================================="
echo "MYSQL 기본 언어셋을 설정 합니다."
echo "====================================="
echo ""
echo ""
sleep 5
cp /home/myserver/apm/res/50-server.cnf /etc/mysql/mariadb.conf.d/50-server.cnf
sleep 1
sudo service mysql restart
sleep 1
clear
echo ""
echo ""
echo "====================================="
echo "PHP 권한을 설정합니다."
echo "====================================="
echo ""
echo ""
sleep 5
sudo apt-get install libapache2-mpm-itk -y
sleep 1
sudo chmod 711 /home
sleep 1
sudo chmod -R 755 /home/*
sleep 1
sudo service apache2 restart
sleep 1
clear
echo ""
echo ""
echo "======================================================="
echo "PHP를 설정합니다."
echo "TimeZone Asia/Seoul 로 변경"
echo "업로드 용량 200MB로 변경"
echo "업로드 수량 200으로 변경"
echo "POST방식으로 넘겨질 최대 사이즈 200MB로 변경"
echo "최대 실행 시간 무제한으로 변경"
echo "======================================================="
echo ""
echo ""
sleep 5
cp /home/myserver/apm/res/php.ini /etc/php/7.0/apache2/php.ini
sleep 1
sudo service apache2 restart
sleep 1
clear
echo ""
echo ""
echo "====================================="
echo "FTP서버를 설치 합니다.."
echo "====================================="
echo ""
echo ""
sleep 5
sudo apt-get install vsftpd -y
sleep 1
clear
echo ""
echo ""
echo "====================================="
echo "samba서버를 설치 합니다.."
echo "====================================="
echo ""
echo ""
sleep 5
sudo apt-get install samba -y
sleep 1
clear
echo ""
echo ""
echo "====================================="
echo "samba서버를 설정 합니다."
echo "설정 중 비밀번호 생성 요청이 있습니다."
echo "접속 비밀번호를 입력후 엔터를 눌러 주세요."
echo "====================================="
echo ""
echo ""
beep
sleep 5
cp /home/myserver/apm/res/smb.conf /etc/samba/smb.conf
sleep 1
sudo smbpasswd -a myuser
sleep 1
sudo service smbd restart
sleep 1
clear
echo ""
echo ""
echo "====================================="
echo "웹 서버를 기동 합니다."
echo "====================================="
echo ""
echo ""
sleep 5
cp /home/myserver/apm/res/000-default.conf /etc/apache2/sites-available/000-default.conf
cp /home/myserver/apm/res/index.html /home/myuser/www/index.html
cp /home/myserver/apm/res/phpinfo.php /home/myuser/www/phpinfo.php
sleep 1
sudo service apache2 restart
sleep 1
clear
echo ""
echo ""
echo "====================================="
echo "phpMyAdmin을 설치 합니다."
echo "====================================="
echo ""
echo ""
sleep 5
sudo apt-get install unzip -y
sleep 1
cp /home/myserver/apm/res/phpmyadmin.zip /home/myuser/www/phpmyadmin.zip
sleep 1
cd /home/myuser/www
sleep 1
unzip phpmyadmin.zip
sleep 1
rm phpmyadmin.zip
sleep 1
clear
firefox 127.0.0.1
