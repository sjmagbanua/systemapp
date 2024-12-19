import 'package:drift/drift.dart';

class TodoTable extends Table {
  IntColumn get id => integer()();
  TextColumn get todo => text().nullable()();
}
