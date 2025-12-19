#!/bin/bash

echo "BMS Backend 시작"

# 배포된 애플리케이션 디렉토리로 이동
cd /home/ec2-user/bms || exit 1

# Gradle이 생성한 JAR 파일 자동 탐색
# plain.jar 같은 불필요한 파일 제외
JAR_FILE=$(ls build/libs/*.jar | grep -v plain | head -n 1)

echo "실행할 JAR 파일: $JAR_FILE"

# 백그라운드 실행 (세션 종료돼도 계속 실행됨)
nohup java -jar \
  -Dspring.profiles.active=prod \
  "$JAR_FILE" \
  > app.log 2>&1 &

echo "BMS Backend 시작 완료"