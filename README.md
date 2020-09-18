# README

# アプリケーション名
タスク・マスター

# アプリケーション概要
タスクの実行をお手伝いするアプリです。事前に決めたタスクを実施できていれば、事前に投稿しておいたお気に入りの画像が呼び出され、タスク達成を祝福してくれます。時々このアプリはあなたに嘘をついていないか聞いてきます。もしも嘘を付いていると怖い画像とお叱りのメッセージが表示されます。

# URL
https://task-28412.herokuapp.com/

# テスト用アカウント
BASIC認証  
ユーザー名：tomoshi  
パスワード：41029  

# 利用方法
①タスクを入力してください。  
②画像とメッセージを入力してください。  
③タスクの詳細画面から実施できたか回答するページに遷移してください。「YES」「NO」で回答してください。  
④各々の回答に応じた画像とメッセージが表示されます。次へボタンでトップページに遷移します。  

＊注意
「YES」と答えると、一定の確率で「嘘を付いてますね？本当に達成できましたか？」というメッセージが表示されます。再度「YES」を選択するとトップページに戻り、「NO」を選ぶとデフォルトで指定した怖い画像が表示されお叱りのメッセージが表示されます  

# 目指した課題解決
何らかの目標に向かって努力している人を対象にしています。特に中高生等の受験生を想定したアプリです。
タスクを設定し実施することで、その人が達成すべき目標を成し遂げることをサポートします。
タスク実施のうえで必要なことは2点であり、「楽しく継続」と「実行力の担保」が重要と考えています。
「楽しく継続」する為に、ユーザーは自分の好きな芸能人等の画像を選択し、頑張った後にかけてほしい言葉を複数事前に設定しておくことでユーザーが楽しくタスクを取り組めるように工夫しています。「実行力の担保」の為に、本当にタスクを完了できたか一定の確率で質問されます。これによりタスク完了に対する回答をする時に緊張感が生まれ、タスクの実行力が担保されています。

# 洗い出した要件
実装済の機能
ユーザー登録機能  
タスク入力  
タスク編集、削除  
画像及びメッセージの入力  
画像及びメッセージの編集及び削除  
herokuの画像リンク切れの防止  

9月中には実装を完了します  
タスク実行時「YES」回答の時に表示される画像とメッセージの確率設定  
タスク実行時「YES」回答の時に確率でタスク実行再確認ページへ遷移する確率設定  
タスク実行時「NO」回答の時に表示される画像とメッセージの確率設定  


# 実装した機能についてのGIFと説明
現在、実装中でありプロトタイプ完成後に説明文を記述致します。

# 実装予定の機能
10月9日頃まで  
検索機能や表示順の切替機能の実装  
エラーメッセージの日本語化  

10月16日頃まで  
SNSアカウントで登録やログインができる機能の実装  

10月23日頃まで  
フォローしている人のタスク実施についてタイムラインに表示される  
フォローしている人のタスク実行状況について「いいね」ができる  
フォローしている人にコメントすることができる  

# データベース設計
現在、実装中でありカラム名等が変わる可能性がある為、プロトタイプ完成後に正式なER図面を掲載致します。

# ローカルの動作方法
実装後後ほど追記します。





