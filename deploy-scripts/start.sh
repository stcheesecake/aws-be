#!/bin/bash

echo "BMS Backend 시작"

APP_DIR=/home/ec2-user/bms

# 디렉토리 없으면 생성
mkdir -p $APP_DIR
cd $APP_DIR || exit 1

# JAR 파일 찾기 (plain 제외)
JAR_FILE=$(ls build/libs/*.jar | grep -v plain | head -n 1)

if [ -z "$JAR_FILE" ]; then
  echo "JAR 파일을 찾을 수 없음"
  exit 1
fi

echo "실행할 JAR 파일: $JAR_FILE"

nohup java -jar \
  -Dspring.profiles.active=prod \
  "$JAR_FILE" \
  > app.log 2>&1 &

echo "BMS Backend 시작 완료"
