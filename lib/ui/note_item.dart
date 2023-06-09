import 'package:flutter/material.dart';
import '../model/note.dart';
import 'note_detail.dart';
import 'package:flutter/cupertino.dart';

class NoteItem extends StatelessWidget {
  final Note note;

  const NoteItem({Key? key, required this.note, required TextStyle textStyle})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => NoteDetail(note: note)),
        );
      },
      child: Padding(
        padding: const EdgeInsets.all(5.0),
        child: Material(
          color: const Color(0xFF282828),
          elevation: 3, // Adjust the elevation value as needed
          borderRadius: BorderRadius.circular(10.0),

          child: Padding(
            padding: const EdgeInsets.only(
              bottom: 8.0,
              top: 8.0,
            ),
            child: CupertinoListTile(
              backgroundColor: const Color(0xFF282828),
              title: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    note.titleNote,
                    style: const TextStyle(
                      fontFamily: 'sfMonoBold',
                      fontSize: 25,
                      color: Colors.white,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 5.0,
                      top: 5,
                    ), // Adjust the padding value as needed
                    child: Text(
                      note.descriptionNote,
                      style: const TextStyle(
                        fontFamily: 'sfMonoBold',
                        fontWeight: FontWeight.w100,
                        color: Colors.white,
                      ),
                      maxLines: 3,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
