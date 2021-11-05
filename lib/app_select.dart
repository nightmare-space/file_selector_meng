import 'package:app_manager/app_manager.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:global_repository/src/utils/screen_util.dart';

import 'app_select_controller.dart';

class AppSelect extends StatefulWidget {
  const AppSelect({Key key}) : super(key: key);

  @override
  _AppSelectState createState() => _AppSelectState();
}

class _AppSelectState extends State<AppSelect> {
  String filter = '';
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 8.w),
          child: SearchBox(
            onInput: (data) {
              filter = data;
              setState(() {});
            },
          ),
        ),
        Expanded(
          child: GetBuilder<AppSelectController>(
            init: AppSelectController(),
            autoRemove: false,
            builder: (context) {
              return AppListPage(
                filter: filter,
                appList: context.apps,
              );
            },
          ),
        ),
      ],
    );
  }
}
