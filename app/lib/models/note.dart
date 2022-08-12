const int noteIdIndex = 0;
const int noteTitleIndex = 1;
const int noteDescriptionIndex = 2;

class Note {
  final int id;
  final String title;
  final String description;

  const Note({
    required this.id,
    required this.title,
    required this.description,
  });

  factory Note.fromBlockchainList(List<dynamic> data) {
    return Note(
      id: data[noteIdIndex].toInt(), // comes as BigInt
      title: data[noteTitleIndex],
      description: data[noteDescriptionIndex],
    );
  }
}
