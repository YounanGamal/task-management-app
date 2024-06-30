import 'package:flutter/material.dart';
import 'package:task_management_app/UI/Components/task_item.dart';

class MenusTabWidget extends StatelessWidget {
  const MenusTabWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15),
      child: Column(
        children: [
          TaskItem(),
          SizedBox(
            height: 15,
          ),
          TaskItem(),
          SizedBox(
            height: 15,
          ),
          TaskItem(),
        ],
      ),
    );
  }
}
