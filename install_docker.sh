# 1. 우분투 시스템 패키지 업데이트
sudo apt-get update

# 2. 필요한 패키지 설치
sudo apt-get install -y apt-transport-https ca-certificates curl gnupg-agent software-properties-common

# 3. Docker의 공식 GPG키를 추가
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
 
# 4. Docker의 공식 apt 저장소를 추가
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"
 
# 5. 시스템 패키지 업데이트
sudo apt-get update

# 6. Docker, Docker Compose 설치
sudo apt-get install -y docker-ce docker-ce-cli containerd.io docker-compose-plugin
 
# 7. Docker가 설치 확인
# 7-1. 도커 실행상태 확인
sudo systemctl status docker
