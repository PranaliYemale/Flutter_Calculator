class Note {
  int? id;
  String title;
  String content;

  Note({
    this.id,
    required this.title,
    required this.content,
  });

  factory Note.fromMap(Map<String, dynamic> json) => Note(
    id: json['id'] as int?,
    title: json['title'] as String,
    content: json['content'] as String,
  );

  Map<String, dynamic> toMap() => {
    'id': id,
    'title': title,
    'content': content,
  };
}
