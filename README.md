# php_template

## console
php artisan tinker


# 環境構築方法

1. dockerの.envファイル作成
rootディレクトリに.envファイルを作成する。

DB_NAME=kitwitter
DB_USER=【DBのユーザ名】
DB_PASS=【DBのパスワード】
TZ=Asia/Tokyo


2. phpの.envファイル作成
./appディレクトリ配下に.envファイルを作成する。
APP_NAME=kitwitter
APP_ENV=local
APP_KEY=【phpのkey】
APP_DEBUG=true
APP_URL=http://localhost

LOG_CHANNEL=stack

DB_CONNECTION=mysql
DB_HOST=127.0.0.1
DB_PORT=3306
DB_DATABASE=kitwitter
DB_USERNAME=【DBのユーザ名】
DB_PASSWORD=【DBのパスワード】

BROADCAST_DRIVER=log
CACHE_DRIVER=file
QUEUE_CONNECTION=sync
SESSION_DRIVER=file
SESSION_LIFETIME=120

REDIS_HOST=127.0.0.1
REDIS_PASSWORD=null
REDIS_PORT=6379

MAIL_DRIVER=smtp
MAIL_HOST=smtp.mailtrap.io
MAIL_PORT=2525
MAIL_USERNAME=null
MAIL_PASSWORD=null
MAIL_ENCRYPTION=null

AWS_ACCESS_KEY_ID=
AWS_SECRET_ACCESS_KEY=
AWS_DEFAULT_REGION=us-east-1
AWS_BUCKET=

PUSHER_APP_ID=
PUSHER_APP_KEY=
PUSHER_APP_SECRET=
PUSHER_APP_CLUSTER=mt1

MIX_PUSHER_APP_KEY="${PUSHER_APP_KEY}"
MIX_PUSHER_APP_CLUSTER="${PUSHER_APP_CLUSTER}"


3. docker imageのbuild
以下のコマンドを実行

docker-compose build
