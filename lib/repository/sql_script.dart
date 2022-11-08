class SqlScript {
  static String createTableMantra = '''
create table Mantra(
 id INTEGER PRIMARY KEY AUTOINCREMENT,
 name TEXT NOT null,
 buddhaName TEXT not null,
 symbol TEXT not null,
 mantraDesc TEXT NOT NULL,
 qtdR INTEGER NOT NULL,
 goal INTEGER NOT NULL,
 acc INTEGER NOT NULL,
 rgb INTEGER NOT NULL,
  FOREIGN KEY(rgb) REFERENCES Rgb(id)
);
''';

  static String createTableRgb = '''
CREATE TABLE Rgb(
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  r INTEGER NOT NULL,
  g INTEGER NOT NULL,
  b INTEGER NOT NULL
);
''';
  static String insert1Mantra = '''
INSERT INTO Mantra (name,buddhaname,symbol,mantradesc,qtdR,goal,acc,rgb) VALUES ('Mantra 1','Buddha 1','lib\\assets\\images\\buddhaMeditation.png','AOM',10,100,0,1);
''';
  static String insert2Mantra = '''
INSERT INTO Mantra (name,buddhaname,symbol,mantradesc,qtdR,goal,acc,rgb) VALUES ('Mantra 2','Buddha 2','lib\\assets\\images\\buddhaMeditation.png','AOM',10,100,0,2);
''';
  static String insert3Mantra = '''
INSERT INTO Mantra (name,buddhaname,symbol,mantradesc,qtdR,goal,acc,rgb) VALUES ('Mantra 3','Buddha 3','lib\\assets\\images\\buddhaMeditation.png','AOM',10,100,0,3);
''';
  static String insert4Mantra = '''
INSERT INTO Mantra (name,buddhaname,symbol,mantradesc,qtdR,goal,acc,rgb) VALUES ('Mantra 4','Buddha 4','lib\\assets\\images\\buddhaMeditation.png','AOM',10,100,0,4);
''';
  static String insert5Mantra = '''
INSERT INTO Mantra (name,buddhaname,symbol,mantradesc,qtdR,goal,acc,rgb) VALUES ('Mantra 5','Buddha 5','lib\\assets\\images\\buddhaMeditation.png','AOM',10,100,0,5);
''';

  static String insert1Rgb = '''
INSERT INTO Rgb (r,g,b) VALUES (0,201,7);
''';
  static String insert2Rgb = '''
INSERT INTO Rgb (r,g,b) VALUES (255,3,3);
''';
  static String insert3Rgb = '''
INSERT INTO Rgb (r,g,b) VALUES (236,255,3);
''';
  static String insert4Rgb = '''
INSERT INTO Rgb (r,g,b) VALUES (3,3,255);
''';
  static String insert5Rgb = '''
INSERT INTO Rgb (r,g,b) VALUES (255,255,255);
''';
}
