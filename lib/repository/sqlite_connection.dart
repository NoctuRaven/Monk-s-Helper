import 'package:sqflite/sqflite.dart';
import 'package:sqflite_common/sqlite_api.dart';
import 'package:sqflite_common_ffi/sqflite_ffi.dart';
import 'package:path/path.dart';
import 'sql_script.dart';

class SQLConnection {
  static Database? _db;

  static Future<Database> getConnection() async {
    sqfliteFfiInit();
    String databasePath = await databaseFactoryFfi.getDatabasesPath();
    var path = join(databasePath, 'DatabaseMantra');
    DatabaseFactory databaseFactory = databaseFactoryFfi;

    if (_db == null) {
      _db = await databaseFactory.openDatabase(
        path,
        options: OpenDatabaseOptions(
          version: 1,
          onCreate: (db, version) {
            db.execute(SqlScript.createTableRgb);
            db.execute(SqlScript.createTableMantra);
            db.execute(SqlScript.insert1Rgb);
            db.execute(SqlScript.insert2Rgb);
            db.execute(SqlScript.insert3Rgb);
            db.execute(SqlScript.insert4Rgb);
            db.execute(SqlScript.insert5Rgb);
            db.execute(SqlScript.insert1Mantra);
            db.execute(SqlScript.insert2Mantra);
            db.execute(SqlScript.insert3Mantra);
            db.execute(SqlScript.insert4Mantra);
            db.execute(SqlScript.insert5Mantra);
          },
        ),
      );
    }
    return _db!;
  }
}
