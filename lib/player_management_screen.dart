import 'package:flutter/material.dart';
import 'styles.dart'; // styles.dart をインポート
import 'player_add_screen.dart'; // プレイヤーを追加する画面のファイルをインポート

class PlayerManagementScreen extends StatelessWidget {
  const PlayerManagementScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('プレイヤーの管理'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(40),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start, // ボタンを上部に配置
              children: <Widget>[
                // プレイヤーを追加するボタン
                buildElevatedButton(
                  onPressed: () {
                    // プレイヤーを追加する画面に遷移
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (context) {
                      return const PlayerAddScreen();
                    }));
                  },
                  label: 'プレイヤーを追加',
                ),
                // プレイヤーを削除するためのボタン
                buildElevatedButton(
                  onPressed: () {
                    // プレイヤーを削除するロジックをここに追加
                  },
                  label: 'プレイヤーの一覧',
                ),
              ],
            ),
          ),
        ));
  }
}
