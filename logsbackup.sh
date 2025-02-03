#!/bin/bash
scp -r /var/log/nginx/access.log.$(date -d "-1 days" "+%Y.%m.%d").gz apparao_it@192.168.189.100:/LOGSBACKUP/API_LOGS/idea_pwa01_11.205

sleep 10m

scp -r /var/log/nginx/error.log.$(date -d "-1 days" "+%Y.%m.%d").gz apparao_it@192.168.189.100:/LOGSBACKUP/API_LOGS/idea_pwa01_11.205
