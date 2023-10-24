// player_add_screen.dart
import 'package:flutter/material.dart';
import 'styles.dart'; // styles.dart をインポート

class PlayerAddScreen extends StatelessWidget {
  const PlayerAddScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('プレイヤーを追加'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(40.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              'プレイヤー名を入力し、プレイヤーを追加するボタンを押してください',
              style: robotoTextStyle(), // Robotoフォントスタイルを適用
            ),

            // プレイヤー名の入力フィールド
            Container(
              margin: const EdgeInsets.only(top: 40, bottom: 40, left: 0, right: 0),
              child: TextFormField(
                decoration: const InputDecoration(
                  labelText: 'プレイヤー名',
                  border: OutlineInputBorder(), // 四角い枠で囲む
                ),
              ),
            ),

            // プレイヤーを追加するボタン
            buildElevatedButton(
              onPressed: () {
                // プレイヤーを追加するロジックをここに追加
              },
              label: 'プレイヤーを追加',
            ),
          ],
        ),
      ),
    );
  }
}