import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('麻雀記録アプリ'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start, // ボタンを上部に配置
          children: <Widget>[
            const SizedBox(height: 20), // 上部のマージンを設定
            Container(
              width: double.infinity,
              margin: const EdgeInsets.symmetric(horizontal: 20),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(vertical: 20),
                ),
                onPressed: () {
                  // プレイヤーの追加・削除画面に遷移するコードをここに追加
                },
                child: const Text(
                  'プレイヤーの追加・削除',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20), // ボタン間の間隔を設定
            Container(
              width: double.infinity,
              margin: const EdgeInsets.symmetric(horizontal: 20),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(vertical: 20),
                ),
                onPressed: () {
                  // 麻雀の点数の記録画面に遷移するコードをここに追加
                },
                child: const Text(
                  '麻雀の点数の記録',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20), // ボタン間の間隔を設定
            Container(
              width: double.infinity,
              margin: const EdgeInsets.symmetric(horizontal: 20),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(vertical: 20),
                ),
                onPressed: () {
                  // アプリの使い方画面に遷移するコードをここに追加
                },
                child: const Text(
                  'アプリの使い方',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}