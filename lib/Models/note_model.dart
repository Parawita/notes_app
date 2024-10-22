import 'package:hive/hive.dart';
part 'note_model.g.dart';

@HiveType(typeId: 0)
class NoteModel extends HiveObject {
  @HiveField(0)
  final int cololr;
  @HiveField(1)
  final String title;
  @HiveField(2)
  final String subtitel;
  @HiveField(3)
  final String date;

  NoteModel(
      {required this.cololr,
      required this.title,
      required this.subtitel,
      required this.date});
}
