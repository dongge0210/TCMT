#!/bin/bash
# TCMT Mac->Windows 持久 SSH 隧道（8080 = mcp-windbg）
# Mac 重启后执行本脚本恢复隧道。免密已配（ED25519 → Windows administrators_authorized_keys）
set -e

WIN_HOST="192.168.1.180"
WIN_USER="Administrator"
LOCAL_PORT=8080
REMOTE_PORT=8080

# 已存在则跳过
if lsof -i :${LOCAL_PORT} -sTCP:LISTEN >/dev/null 2>&1; then
  echo "tunnel already up on 127.0.0.1:${LOCAL_PORT}"
  exit 0
fi

ssh -f -N \
  -o ExitOnForwardFailure=yes \
  -o ServerAliveInterval=30 \
  -o ServerAliveCountMax=3 \
  -L ${LOCAL_PORT}:127.0.0.1:${REMOTE_PORT} \
  ${WIN_USER}@${WIN_HOST}

sleep 1
lsof -i :${LOCAL_PORT} -sTCP:LISTEN >/dev/null 2>&1 \
  && echo "tunnel OK: 127.0.0.1:${LOCAL_PORT} -> ${WIN_HOST}:${REMOTE_PORT}" \
  || echo "tunnel FAILED"
