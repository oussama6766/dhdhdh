import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class DatabaseService {
  static final DatabaseService _instance = DatabaseService._internal();
  factory DatabaseService() => _instance;
  DatabaseService._internal();

  static Database? _database;

  Future<Database> get database async {
    if (_database != null) return _database!;
    _database = await _initDatabase();
    return _database!;
  }

  Future<Database> _initDatabase() async {
    final dbPath = await getDatabasesPath();
    final path = join(dbPath, 'nasheed_alarm.db');

    return await openDatabase(
      path,
      version: 1,
      onCreate: _onCreate,
    );
  }

  Future<void> _onCreate(Database db, int version) async {
    // Alarms Table
    await db.execute('''
      CREATE TABLE alarms(
        id INTEGER PRIMARY KEY AUTOINCREMENT,
        time TEXT NOT NULL,
        label TEXT,
        isEnabled INTEGER NOT NULL DEFAULT 1,
        days TEXT,
        audioPath TEXT
      )
    ''');

    // Reminders Table
    await db.execute('''
      CREATE TABLE reminders(
        id INTEGER PRIMARY KEY AUTOINCREMENT,
        time TEXT NOT NULL,
        content TEXT,
        repeat TEXT
      )
    ''');
  }

  // CRUD Operations Examples
  Future<int> insertAlarm(Map<String, dynamic> alarm) async {
    final db = await database;
    return await db.insert('alarms', alarm);
  }

  Future<List<Map<String, dynamic>>> getAlarms() async {
    final db = await database;
    return await db.query('alarms');
  }

  Future<int> deleteAlarm(int id) async {
    final db = await database;
    return await db.delete('alarms', where: 'id = ?', whereArgs: [id]);
  }
}
