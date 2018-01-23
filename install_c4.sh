clear
echo ""
echo ""
echo "60초 후 설치가 시작 됩니다."
echo "설치가 시작 되기 전 까지 아래 안내문구를 읽어 주시길 바랍니다."
echo ""
echo ""
echo ""
echo "=================================================================="
echo "우분투 웹 서버 구축 챕터3"
echo ""
echo "이번 챕터에는 직접 입력 해야 하는 부분이 많습니다."
echo "꼭! 가이드 페이지를 함께 보면서 작업 해 주세요."
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
echo "15초 후 설정 편집으로 진입 합니다."
echo "가이드를 보고 따라 해 주세요."
echo "================================"
echo ""
echo ""
sleep 15
nano /home/myserver/apm/res/ssl/https.conf
sleep 1
clear
echo ""
echo ""
echo "=========================================="
echo "인증서를 발급받는 중입니다."
echo "E-Mail 입력창이 뜨면 E-Mail을 입력하고"
echo "약관에 동의 해 주세요."
echo "=========================================="
echo ""
echo ""
sleep 5
sudo letsencrypt certonly --webroot --webroot-path=/home/myuser/www -d examplesite.com -d www.examplesite.com
sleep 1
clear
echo ""
echo ""
echo "===================================================="
echo "15초 후 설정 편집으로 진입 합니다."
echo "가이드를 정확히 보고 따라 해 주세요."
echo "잘못 입력 할 경우 큰 문제가 생길 수 있습니다."
echo "===================================================="
echo ""
echo ""
sleep 15
crontab -e
sleep 1
clear
echo ""
echo ""
echo "===================================================="
echo "설정을 적용중입니다."
echo "===================================================="
echo ""
echo ""
sleep 15
cp /home/myserver/apm/res/ssl/examplesite.com.conf /etc/apache2/sites-available/examplesite.com.conf
sleep 1
a2ensite examplesite.com
sleep 1
service apache2 restart
sleep 1

clear

