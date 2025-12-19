#!/bin/bash

echo "BMS Backend 종료 시작"

PID=$(pgrep -f 'java -jar')

if [ -n "$PID" ]; then
  echo "기존 프로세스 종료 중 PID=$PID"
  kill -15 $PID
  sleep 5
else
  echo "실행 중인 애플리케이션 없음"
fi

echo "BMS Backend 종료 완료"