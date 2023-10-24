// main.dart

import 'package:flutter/material.dart';
import 'player_management_screen.dart';
import 'styles.dart';

void main() {
  runApp(const MaterialApp(
    home: MyApp(),
    // 他の設定
  ));
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
        body: Padding(
          padding: const EdgeInsets.all(40),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                buildElevatedButton(
                  label: 'プレイヤーの管理',
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                      return Builder(
                        builder: (context) => const PlayerManagementScreen(),
                      );
                    }));
                  },
                ),
                buildElevatedButton(
                  label: '麻雀の点数の記録',
                  onPressed: () {
                    // 麻雀の点数の記録画面に遷移するコードをここに追加
                  },
                ),
                buildElevatedButton(
                  label: 'アプリの使い方',
                  onPressed: () {
                    // アプリの使い方画面に遷移するコードをここに追加
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}