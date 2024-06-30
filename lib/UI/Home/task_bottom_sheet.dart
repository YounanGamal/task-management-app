import 'package:flutter/material.dart';
import '../Components/custom_bottom.dart';
import '../Components/custom_text_form_field.dart';

class TaskBottomSheet extends StatelessWidget {
  const TaskBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Column(
        children: [
          Text(
            'Add New Task',
            style: Theme.of(context).textTheme.titleMedium,
          ),
          const SizedBox(
            height: 20,
          ),
          CustomTextFormField(
            labelText: 'Enter your task title',
            filled: false,
            colorBorder: Theme.of(context).hintColor,
            colorTextStyle: Theme.of(context).hintColor,
          ),
          const SizedBox(
            height: 15,
          ),
          CustomTextFormField(
            labelText: 'Enter your task details',
            filled: false,
            colorBorder: Theme.of(context).hintColor,
            colorTextStyle: Theme.of(context).hintColor,
            maxLines: 3,
          ),
          const SizedBox(
            height: 15,
          ),
          Container(
            margin: EdgeInsets.only(left: 10),
            alignment: Alignment.topLeft,
            child: Text(
              'Select time',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w400,
                color: Colors.black,
              ),
            ),
          ),
          Text(
            '27-6-2021',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w400,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          CustomBottom(
            bottomName: 'Add Task',
            onButtonClickedCallback: () {},
          ),
        ],
      ),
    );
  }
}
