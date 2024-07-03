import 'package:flutter/material.dart';
import '../Components/custom_bottom.dart';
import '../Components/custom_text_form_field.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
class TaskBottomSheet extends StatelessWidget {
  const TaskBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Column(
        children: [
          Text(
            AppLocalizations.of(context)!.title_bottom_sheet,
            style: Theme.of(context).textTheme.titleMedium,
          ),
          const SizedBox(
            height: 20,
          ),
          CustomTextFormField(
            labelText: AppLocalizations.of(context)!.hint_task,
            filled: false,
            colorBorder: Theme.of(context).hintColor,
            colorTextStyle: Theme.of(context).hintColor,
          ),
          const SizedBox(
            height: 15,
          ),
          CustomTextFormField(
            labelText: AppLocalizations.of(context)!.hint_details,
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
              AppLocalizations.of(context)!.select_time,
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
            bottomName: AppLocalizations.of(context)!.title_bottom_sheet,
            onButtonClickedCallback: () {},
          ),
        ],
      ),
    );
  }
}
