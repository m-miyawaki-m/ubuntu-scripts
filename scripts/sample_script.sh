#!/bin/bash

# 環境変数部
source conf/env_sample.conf

# メッセージの種類と重要度を環境変数にセット
INFO="[INFO]"
RESULT="[RESULT]"
SUCCESS="[SUCCESS]"
LOW="[LOW]"
MEDIUM="[MEDIUM]"
HIGH="[HIGH]"
DATE="[$(date)]"

# 引数が"grep"の場合、または引数がない場合、grepコマンドでログファイルを検索
if [ "$1" = "grep" ] || [ -z "$1" ]; then
    echo "$INFO$LOW grep処理が実行されます"
    echo "$INFO$MEDIUM 検索文字＝$search_string"
    echo "$INFO$MEDIUM ログファイル＝$log_file"
    result=$(grep -i -c "$search_string" "$log_file")
    echo "$RESULT$HIGH 検索結果の行数：$result"
    if [ -n "$result" ]; then
        echo "$SUCCESS$HIGH 検索文字列が見つかりました"
        echo "$DATE $search_string $result" >> "./task/sample.task"
    fi
fi

# 引数が"clear"の場合、result.logの中身を削除
if [ "$1" = "clear" ]; then
    echo "$INFO$LOW clear処理が実行されます"
    > "./task/sample.task"
fi