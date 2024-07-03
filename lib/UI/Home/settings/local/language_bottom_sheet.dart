import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:task_management_app/Providers/settings_provider.dart';

class LanguageBottomSheet extends StatefulWidget {
  const LanguageBottomSheet({super.key});

  @override
  State<LanguageBottomSheet> createState() => _LanguageBottomSheetState();
}

class _LanguageBottomSheetState extends State<LanguageBottomSheet> {
  @override
  Widget build(BuildContext context) {
    SettingsProvider provider = Provider.of<SettingsProvider>(context);
    return  Container(
      padding: EdgeInsets.all(15),
      alignment: Alignment.topLeft,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          InkWell(
            onTap: () {
              provider.changeApplicationTheme(ThemeMode.light);
            },
            child: provider.currentTheme == ThemeMode.light
                ? getSelectedLanguage('English')
                : getUnSelectedLanguage('English'),
          ),
          const SizedBox(
            height: 10,
          ),
          InkWell(
            onTap: () {
              provider.changeApplicationTheme(ThemeMode.dark);
            },
            child: provider.currentTheme == ThemeMode.dark
                ? getSelectedLanguage('Arabic')
                : getUnSelectedLanguage('Arabic'),
          ),
        ],
      ),
    );
  }

  getSelectedLanguage(String selectedLanguage) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          selectedLanguage,
          style: TextStyle(
            fontSize: 22,
            color: Theme.of(context).colorScheme.primary,
          ),
        ),
        Icon(
          Icons.check,
          color: Theme.of(context).colorScheme.primary,
          size: 30,
        )
      ],
    );
  }

  getUnSelectedLanguage(String unSelectedLanguage) {
    return Text(
      unSelectedLanguage,
      style: TextStyle(
        fontSize: 22,
        color: Colors.black,
      ),
    );
  }
}
