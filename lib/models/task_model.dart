// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:uuid/uuid.dart';

class Task {
  final String id;
  String name;
  final DateTime createdAt;
  bool iscompleted;
  Task({
    required this.id,
    required this.name,
    required this.createdAt,
    required this.iscompleted,
  });

  factory Task.create({required String name, required DateTime createdAt}) {
    return Task(
        id: Uuid().v1(), name: name, createdAt: createdAt, iscompleted: false);
  }
}
