import 'package:drift/drift.dart';

class AccountTable extends Table {
  IntColumn get id => integer()();
  TextColumn get email => text().nullable()();
}
