# めぬまおそうざいについて

めぬまおそうざいは練習用自作ページです。

実装機能

1,ログイン、ユーザー管理機能

2,ヘッダー、フッターの共通化

3,お買い物カート機能

4,購入した商品をログインしているユーザーごとに履歴が表示される

5,管理者はユーザー情報をCRUD出来る

# Requirement

"めぬまおそうざい"を動かすのに必要なライブラリ

* php 7.2.14
* phpMyAdmin 4.8.3
* Apache/2.2.31 (Win32) DAV/2 mod_ssl/2.2.31
* mysqlnd 5.0.12-

https://www.mamp.info/en/windows/ にて最新版MAMPをDLすれば動作します。

# Installation

Requirementで列挙したライブラリのインストール及びDEMOの実行方法

1, https://www.mamp.info/en/windows/ にアクセスし、MAMPのフリー版をダウンロードします。

2, ダウンロードしたMAMPフォルダより"MAMP.app"を開き、サーバーを起動します。

3, https://github.com/u235018ki/careconpractice.git にアクセスし、クローンのzipファイルをダウンロードします。

4, zipファイルを解凍し、MAMPフォルダ内"htdocs"フォルダに中身を保存します。

5, http://localhost/phpMyAdmin/ にアクセスし、SQLタブをクリックします。

6, zipファイル内にある"localhost.sql"の中身を実行し、データベースを作成します。

7, データベース作成後、http://localhost/MenumaOsozai/login/login.php にアクセスします。

# Author

作成情報

* 作成者:Keiichi Inoue
* 所属:Carecon
* E-mail:kiu235018ki@gmail.com
