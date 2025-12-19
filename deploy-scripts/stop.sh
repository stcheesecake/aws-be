#!/bin/bash

echo "BMS Backend 종료 시작"

# Spring Boot 메인 클래스 이름으로 실행 중인 프로세스 검색
PID=$(pgrep -f BackendApplication)

# PID가 존재하면 (즉, 서버가 실행 중이면)
if [ -n "$PID" ]; then
  echo "기존 프로세스 종료 중 PID=$PID"
  
  # 정상 종료 요청
  kill -15 $PID
  
  # 종료 대기
  sleep 5
else
  echo "실행 중인 애플리케이션 없음"
fi

echo " BMS Backend 종료 완료"