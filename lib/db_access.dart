import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class PlayersDatabase {
  final String tableName = 'players';
  final String columnId = 'id';
  final String columnName = 'name';

  Database? _database;

  Future<void> open() async {
    final databasePath = await getDatabasesPath();
    final path = join(databasePath, 'mahjong_score_note.db');

    _database = await openDatabase(path, version: 1,
        onCreate: (Database db, int version) async {
          await db.execute('''
        CREATE TABLE $tableName (
          $columnId INTEGER PRIMARY KEY,
          $columnName TEXT
        )
      ''');
        });
  }

  Future<int> insertPlayer(Player player) async {
    if (_database == null) {
      await open();
    }
    return await _database!.insert(tableName, player.toMap());
  }

  Future<List<Player>> getPlayers() async {
    if (_database == null) {
      await open();
    }
    final List<Map<String, dynamic>> maps = await _database!.query(tableName);

    return List.generate(maps.length, (i) {
      return Player(
        id: maps[i][columnId],
        name: maps[i][columnName],
      );
    });
  }

  Future<void> deletePlayer(int id) async {
    if (_database == null) {
      await open();
    }
    await _database!.delete(tableName, where: '$columnId = ?', whereArgs: [id]);
  }

  Future close() async {
    await _database!.close();
  }
}

class Player {
  final int? id;
  final String name;

  Player({this.id, required this.name});

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
    };
  }
}