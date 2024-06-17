仕事も落ち着いてきたので、flutterアプリ作成してみようと思う。
まずテンプーレートプロジェクトを作っておく。
getXは商用では利用されてなさそうなので、riverpodを使おう。

やってみること
バージョン管理:fvm
状態管理:hooks_riverpod
バックエンド:firebase
ローカルDB:Isar
WebView:flutter_inappwebview


参考資料と環境のメモ。


https://speakerdeck.com/mthiroshi/android-neiteibu-shi-zhuang-apurino-flutter-hua-shi-li

https://zenn.dev/zudah228/articles/336e5eb1cf8888#3.-%E3%83%87%E3%82%A3%E3%83%AC%E3%82%AF%E3%83%88%E3%83%AA%E3%81%AE%E5%88%86%E5%89%B2
https://stv-tech.co.jp/blog/flutter%E3%83%97%E3%83%AD%E3%82%B8%E3%82%A7%E3%82%AF%E3%83%88%E3%81%A7%E5%B0%8E%E5%85%A5%E5%AE%9F%E7%B8%BE%E3%81%AE%E3%81%82%E3%82%8B%E5%9F%BA%E6%9C%AC%E7%9A%84%E3%81%AA%E3%83%91%E3%83%83%E3%82%B1

https://github.com/hukusuke1007/flutter_app_template
https://zenn.dev/yohei_watanabe/articles/a1352b76c96316

dart-define-from-fileは一旦保留

lintはpedantic_monoで厳密に。
https://pub.dev/packages/pedantic_mono

loggerは面白そうだったので
https://zenn.dev/susatthi/articles/20220506-144617-flutter-roggle


同じエラー再ログインが必要だった
https://qiita.com/norifumi92/items/8e7832f9c46df4918291

まじ便利。保存時に呼べないかな
import_sorter
https://zenn.dev/joo_hashi/articles/7cab135f2221e5

pod repoで下記が動かなかった。
722 /Library/Ruby/Gems/2.6.0/gems/ffi-1.13.1/lib/ffi.rb
ffiの入れ直しで解決
sudo arch -x86_64 gem install ffi    
参考
https://qiita.com/YokohamaHori/items/341f0f3bd50e74f7b5e8
エラー
[!] CDN: trunk URL couldn't be downloaded: https://cdn.cocoapods.org/deprecated_podspecs.txt Response: URL using bad/illegal format or missing URL
https://qiita.com/yuki-okamoto-13/items/0b30b62ca18638589c32

いろいろやっても解決できない。
[!] Unable to add a source with url https://cdn.cocoapods.org/ named trunk.
これが効果ありそう。
sudo gem update
完璧、gemが古かったんや

https://ente.io/blog/tech/sqlite-objectbox-isar/

ライブラリ集
https://sogablog.net/2023/06/27/%E3%80%90flutter%E3%80%91flutter-widget-%E3%83%A9%E3%82%A4%E3%83%96%E3%83%A9%E3%83%AA%E7%B4%B9%E4%BB%8B/
https://qiita.com/allJokin/items/69c25cda015572ba89e8

WebView比較
https://zenn.dev/taku_zenn/articles/a7ef926c73ec3d

privacy manifest対応とは？

app_tracking_transparencyとは？
個人情報の許可が必要らしい
https://tech-blog.cloud-config.jp/2023-11-28-app-tracking-transparency-flutter

画面遷移周り
https://zenn.dev/koji_1009/articles/ad3e7941294e1f

最新情報riverpod3
https://zenn.dev/heyhey1028/articles/riverpod3-preview


analysis_optionsのwaningが解決できない
lintが変な風に適用されている？