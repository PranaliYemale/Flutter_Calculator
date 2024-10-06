import 'package:flutter/material.dart';
import 'package:note_app/helper.dart';
import 'package:note_app/note.dart';



class NoteProvider with ChangeNotifier {
  List<Note> _notes = [];
  List<Note> get notes => _notes;

  NoteProvider() {
    _loadNotes();
  }

  Future<void> _loadNotes() async {
    _notes = await DatabaseHelper().getNotes();
    notifyListeners();
  }

  Future<void> addNote(Note note) async {
    await DatabaseHelper().insertNote(note);
    _loadNotes();
  }

  Future<void> deleteNote(int id) async {
    await DatabaseHelper().deleteNote(id);
    _loadNotes();
  }

  Future<void> updateNote(Note note) async {
    await DatabaseHelper().updateNote(note);
    _loadNotes();
  }
}
