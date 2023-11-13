

構成

scripts
    ∟conf（設定ファイル）
        ∟sample.config   
    ∟log（ログファイル）
        ∟sample.log
    ∟task（タスクファイル）
        ∟sample.task
    sample_script.sh（実行スクリプト）


### cron設定


`cron`をインストールするには、以下のコマンドを実行します。

```bash
sudo apt-get update
sudo apt-get install cron
```

これらのコマンドは、パッケージリストを更新し、`cron`をインストールします。これにより、`crontab`コマンドが使用可能になります。

GitHub Copilot: cronを設定するには、`crontab -e`コマンドを使用してcrontabファイルを編集します。
```bash
#cron起動
sudo service cron start

#cron status
sudo service cron status

# crontab -e`コマンドを使用してcrontabファイルを編集します
crontab -e

#1分毎実行を書き込む
* * * * * /workspaces/ubuntu-scripts/scripts/sample_script.sh

# 実行権限付与
chmod +x /workspaces/ubuntu-scripts/scripts/sample_script.sh

# 現在のユーザーのcron設定確認
crontab -l

# 特定のユーザーのcron設定を確認するには、`-u`オプションとユーザー名を指定します
crontab -u root -l

# 全てのcronジョブを削除する
crontab -r

#
sudo apt-get install bc

# sudo apt-get install openssh-server
sudo apt-get install openssh-server
```