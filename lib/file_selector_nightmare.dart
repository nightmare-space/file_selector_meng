import 'package:flutter/material.dart';

import 'directory_select_page.dart';
import 'file_select_page.dart';

class FileSelector {
  static Future<List<String>> pick(BuildContext context) async {
    List<String> result = await Navigator.of(context).push(
      MaterialPageRoute(
        builder: (_) {
          return Theme(
            data: Theme.of(context),
            child: FileSelectPage(),
          );
        },
      ),
    );
    return result;
  }

  static Future<String> pickDirectory(BuildContext context) async {
    String result = await Navigator.of(context).push(
      MaterialPageRoute(
        builder: (_) {
          return DirectorySelectPage();
        },
      ),
    );
    return result;
  }
}
