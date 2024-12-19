// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'todolist_database.dart';

// ignore_for_file: type=lint
class $AccountTableTable extends AccountTable
    with TableInfo<$AccountTableTable, AccountTableData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $AccountTableTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _emailMeta = const VerificationMeta('email');
  @override
  late final GeneratedColumn<String> email = GeneratedColumn<String>(
      'email', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  @override
  List<GeneratedColumn> get $columns => [id, email];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'account_table';
  @override
  VerificationContext validateIntegrity(Insertable<AccountTableData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('email')) {
      context.handle(
          _emailMeta, email.isAcceptableOrUnknown(data['email']!, _emailMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => const {};
  @override
  AccountTableData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return AccountTableData(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      email: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}email']),
    );
  }

  @override
  $AccountTableTable createAlias(String alias) {
    return $AccountTableTable(attachedDatabase, alias);
  }
}

class AccountTableData extends DataClass
    implements Insertable<AccountTableData> {
  final int id;
  final String? email;
  const AccountTableData({required this.id, this.email});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    if (!nullToAbsent || email != null) {
      map['email'] = Variable<String>(email);
    }
    return map;
  }

  AccountTableCompanion toCompanion(bool nullToAbsent) {
    return AccountTableCompanion(
      id: Value(id),
      email:
          email == null && nullToAbsent ? const Value.absent() : Value(email),
    );
  }

  factory AccountTableData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return AccountTableData(
      id: serializer.fromJson<int>(json['id']),
      email: serializer.fromJson<String?>(json['email']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'email': serializer.toJson<String?>(email),
    };
  }

  AccountTableData copyWith(
          {int? id, Value<String?> email = const Value.absent()}) =>
      AccountTableData(
        id: id ?? this.id,
        email: email.present ? email.value : this.email,
      );
  AccountTableData copyWithCompanion(AccountTableCompanion data) {
    return AccountTableData(
      id: data.id.present ? data.id.value : this.id,
      email: data.email.present ? data.email.value : this.email,
    );
  }

  @override
  String toString() {
    return (StringBuffer('AccountTableData(')
          ..write('id: $id, ')
          ..write('email: $email')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, email);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is AccountTableData &&
          other.id == this.id &&
          other.email == this.email);
}

class AccountTableCompanion extends UpdateCompanion<AccountTableData> {
  final Value<int> id;
  final Value<String?> email;
  final Value<int> rowid;
  const AccountTableCompanion({
    this.id = const Value.absent(),
    this.email = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  AccountTableCompanion.insert({
    required int id,
    this.email = const Value.absent(),
    this.rowid = const Value.absent(),
  }) : id = Value(id);
  static Insertable<AccountTableData> custom({
    Expression<int>? id,
    Expression<String>? email,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (email != null) 'email': email,
      if (rowid != null) 'rowid': rowid,
    });
  }

  AccountTableCompanion copyWith(
      {Value<int>? id, Value<String?>? email, Value<int>? rowid}) {
    return AccountTableCompanion(
      id: id ?? this.id,
      email: email ?? this.email,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (email.present) {
      map['email'] = Variable<String>(email.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('AccountTableCompanion(')
          ..write('id: $id, ')
          ..write('email: $email, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $TodoTableTable extends TodoTable
    with TableInfo<$TodoTableTable, TodoTableData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $TodoTableTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _todoMeta = const VerificationMeta('todo');
  @override
  late final GeneratedColumn<String> todo = GeneratedColumn<String>(
      'todo', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  @override
  List<GeneratedColumn> get $columns => [id, todo];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'todo_table';
  @override
  VerificationContext validateIntegrity(Insertable<TodoTableData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('todo')) {
      context.handle(
          _todoMeta, todo.isAcceptableOrUnknown(data['todo']!, _todoMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => const {};
  @override
  TodoTableData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return TodoTableData(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      todo: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}todo']),
    );
  }

  @override
  $TodoTableTable createAlias(String alias) {
    return $TodoTableTable(attachedDatabase, alias);
  }
}

class TodoTableData extends DataClass implements Insertable<TodoTableData> {
  final int id;
  final String? todo;
  const TodoTableData({required this.id, this.todo});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    if (!nullToAbsent || todo != null) {
      map['todo'] = Variable<String>(todo);
    }
    return map;
  }

  TodoTableCompanion toCompanion(bool nullToAbsent) {
    return TodoTableCompanion(
      id: Value(id),
      todo: todo == null && nullToAbsent ? const Value.absent() : Value(todo),
    );
  }

  factory TodoTableData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return TodoTableData(
      id: serializer.fromJson<int>(json['id']),
      todo: serializer.fromJson<String?>(json['todo']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'todo': serializer.toJson<String?>(todo),
    };
  }

  TodoTableData copyWith(
          {int? id, Value<String?> todo = const Value.absent()}) =>
      TodoTableData(
        id: id ?? this.id,
        todo: todo.present ? todo.value : this.todo,
      );
  TodoTableData copyWithCompanion(TodoTableCompanion data) {
    return TodoTableData(
      id: data.id.present ? data.id.value : this.id,
      todo: data.todo.present ? data.todo.value : this.todo,
    );
  }

  @override
  String toString() {
    return (StringBuffer('TodoTableData(')
          ..write('id: $id, ')
          ..write('todo: $todo')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, todo);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is TodoTableData &&
          other.id == this.id &&
          other.todo == this.todo);
}

class TodoTableCompanion extends UpdateCompanion<TodoTableData> {
  final Value<int> id;
  final Value<String?> todo;
  final Value<int> rowid;
  const TodoTableCompanion({
    this.id = const Value.absent(),
    this.todo = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  TodoTableCompanion.insert({
    required int id,
    this.todo = const Value.absent(),
    this.rowid = const Value.absent(),
  }) : id = Value(id);
  static Insertable<TodoTableData> custom({
    Expression<int>? id,
    Expression<String>? todo,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (todo != null) 'todo': todo,
      if (rowid != null) 'rowid': rowid,
    });
  }

  TodoTableCompanion copyWith(
      {Value<int>? id, Value<String?>? todo, Value<int>? rowid}) {
    return TodoTableCompanion(
      id: id ?? this.id,
      todo: todo ?? this.todo,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (todo.present) {
      map['todo'] = Variable<String>(todo.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('TodoTableCompanion(')
          ..write('id: $id, ')
          ..write('todo: $todo, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

abstract class _$TodolistDatabase extends GeneratedDatabase {
  _$TodolistDatabase(QueryExecutor e) : super(e);
  $TodolistDatabaseManager get managers => $TodolistDatabaseManager(this);
  late final $AccountTableTable accountTable = $AccountTableTable(this);
  late final $TodoTableTable todoTable = $TodoTableTable(this);
  late final AccountDao accountDao = AccountDao(this as TodolistDatabase);
  late final TodosDao todosDao = TodosDao(this as TodolistDatabase);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [accountTable, todoTable];
}

typedef $$AccountTableTableCreateCompanionBuilder = AccountTableCompanion
    Function({
  required int id,
  Value<String?> email,
  Value<int> rowid,
});
typedef $$AccountTableTableUpdateCompanionBuilder = AccountTableCompanion
    Function({
  Value<int> id,
  Value<String?> email,
  Value<int> rowid,
});

class $$AccountTableTableFilterComposer
    extends Composer<_$TodolistDatabase, $AccountTableTable> {
  $$AccountTableTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get email => $composableBuilder(
      column: $table.email, builder: (column) => ColumnFilters(column));
}

class $$AccountTableTableOrderingComposer
    extends Composer<_$TodolistDatabase, $AccountTableTable> {
  $$AccountTableTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get email => $composableBuilder(
      column: $table.email, builder: (column) => ColumnOrderings(column));
}

class $$AccountTableTableAnnotationComposer
    extends Composer<_$TodolistDatabase, $AccountTableTable> {
  $$AccountTableTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get email =>
      $composableBuilder(column: $table.email, builder: (column) => column);
}

class $$AccountTableTableTableManager extends RootTableManager<
    _$TodolistDatabase,
    $AccountTableTable,
    AccountTableData,
    $$AccountTableTableFilterComposer,
    $$AccountTableTableOrderingComposer,
    $$AccountTableTableAnnotationComposer,
    $$AccountTableTableCreateCompanionBuilder,
    $$AccountTableTableUpdateCompanionBuilder,
    (
      AccountTableData,
      BaseReferences<_$TodolistDatabase, $AccountTableTable, AccountTableData>
    ),
    AccountTableData,
    PrefetchHooks Function()> {
  $$AccountTableTableTableManager(
      _$TodolistDatabase db, $AccountTableTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$AccountTableTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$AccountTableTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$AccountTableTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            Value<int> id = const Value.absent(),
            Value<String?> email = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              AccountTableCompanion(
            id: id,
            email: email,
            rowid: rowid,
          ),
          createCompanionCallback: ({
            required int id,
            Value<String?> email = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              AccountTableCompanion.insert(
            id: id,
            email: email,
            rowid: rowid,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ));
}

typedef $$AccountTableTableProcessedTableManager = ProcessedTableManager<
    _$TodolistDatabase,
    $AccountTableTable,
    AccountTableData,
    $$AccountTableTableFilterComposer,
    $$AccountTableTableOrderingComposer,
    $$AccountTableTableAnnotationComposer,
    $$AccountTableTableCreateCompanionBuilder,
    $$AccountTableTableUpdateCompanionBuilder,
    (
      AccountTableData,
      BaseReferences<_$TodolistDatabase, $AccountTableTable, AccountTableData>
    ),
    AccountTableData,
    PrefetchHooks Function()>;
typedef $$TodoTableTableCreateCompanionBuilder = TodoTableCompanion Function({
  required int id,
  Value<String?> todo,
  Value<int> rowid,
});
typedef $$TodoTableTableUpdateCompanionBuilder = TodoTableCompanion Function({
  Value<int> id,
  Value<String?> todo,
  Value<int> rowid,
});

class $$TodoTableTableFilterComposer
    extends Composer<_$TodolistDatabase, $TodoTableTable> {
  $$TodoTableTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get todo => $composableBuilder(
      column: $table.todo, builder: (column) => ColumnFilters(column));
}

class $$TodoTableTableOrderingComposer
    extends Composer<_$TodolistDatabase, $TodoTableTable> {
  $$TodoTableTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get todo => $composableBuilder(
      column: $table.todo, builder: (column) => ColumnOrderings(column));
}

class $$TodoTableTableAnnotationComposer
    extends Composer<_$TodolistDatabase, $TodoTableTable> {
  $$TodoTableTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get todo =>
      $composableBuilder(column: $table.todo, builder: (column) => column);
}

class $$TodoTableTableTableManager extends RootTableManager<
    _$TodolistDatabase,
    $TodoTableTable,
    TodoTableData,
    $$TodoTableTableFilterComposer,
    $$TodoTableTableOrderingComposer,
    $$TodoTableTableAnnotationComposer,
    $$TodoTableTableCreateCompanionBuilder,
    $$TodoTableTableUpdateCompanionBuilder,
    (
      TodoTableData,
      BaseReferences<_$TodolistDatabase, $TodoTableTable, TodoTableData>
    ),
    TodoTableData,
    PrefetchHooks Function()> {
  $$TodoTableTableTableManager(_$TodolistDatabase db, $TodoTableTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$TodoTableTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$TodoTableTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$TodoTableTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            Value<int> id = const Value.absent(),
            Value<String?> todo = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              TodoTableCompanion(
            id: id,
            todo: todo,
            rowid: rowid,
          ),
          createCompanionCallback: ({
            required int id,
            Value<String?> todo = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              TodoTableCompanion.insert(
            id: id,
            todo: todo,
            rowid: rowid,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ));
}

typedef $$TodoTableTableProcessedTableManager = ProcessedTableManager<
    _$TodolistDatabase,
    $TodoTableTable,
    TodoTableData,
    $$TodoTableTableFilterComposer,
    $$TodoTableTableOrderingComposer,
    $$TodoTableTableAnnotationComposer,
    $$TodoTableTableCreateCompanionBuilder,
    $$TodoTableTableUpdateCompanionBuilder,
    (
      TodoTableData,
      BaseReferences<_$TodolistDatabase, $TodoTableTable, TodoTableData>
    ),
    TodoTableData,
    PrefetchHooks Function()>;

class $TodolistDatabaseManager {
  final _$TodolistDatabase _db;
  $TodolistDatabaseManager(this._db);
  $$AccountTableTableTableManager get accountTable =>
      $$AccountTableTableTableManager(_db, _db.accountTable);
  $$TodoTableTableTableManager get todoTable =>
      $$TodoTableTableTableManager(_db, _db.todoTable);
}
