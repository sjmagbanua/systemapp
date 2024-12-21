import 'package:drift/drift.dart';

class TaskTable extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get email => text().nullable()();
}
