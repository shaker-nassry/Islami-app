import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islami/languagesheet.dart';
import 'package:islami/themesheet.dart';

class Settingstab extends StatefulWidget {
  static String routename = 'Settingstab';

  @override
  State<Settingstab> createState() => _SettingstabState();
}

class _SettingstabState extends State<Settingstab> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(50),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(AppLocalizations.of(context)!.language,
              style: Theme.of(context).textTheme.labelLarge),
          Container(
            padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
            margin: EdgeInsets.fromLTRB(0, 10, 0, 30),
            height: 35,
            width: 50,
            decoration: BoxDecoration(
                border: Border.all(
                    color: Theme.of(context).dividerColor, width: 2)),
            child: InkWell(
              onTap: () {
                Showlaguagesheet();
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(AppLocalizations.of(context)!.language,
                      style: Theme.of(context).textTheme.labelMedium),
                  Icon(
                    Icons.keyboard_arrow_down_outlined,
                    color: Theme.of(context).dividerColor,
                  )
                ],
              ),
            ),
          ),
          Text(
            AppLocalizations.of(context)!.theme,
            style: Theme.of(context).textTheme.labelLarge,
          ),
          Container(
            padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
            margin: EdgeInsets.fromLTRB(0, 10, 0, 30),
            height: 35,
            width: 50,
            decoration: BoxDecoration(
                border: Border.all(
                    color: Theme.of(context).dividerColor, width: 2)),
            child: InkWell(
              onTap: () {
                Showthemesheet();
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    AppLocalizations.of(context)!.theme,
                    style: Theme.of(context).textTheme.labelMedium,
                  ),
                  Icon(Icons.keyboard_arrow_down_outlined,
                      color: Theme.of(context).dividerColor)
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  void Showlaguagesheet() {
    showModalBottomSheet(
      context: context,
      builder: (context) => languagesheet(),
    );
  }

  void Showthemesheet() {
    showModalBottomSheet(
      context: context,
      builder: (context) => themesheet(),
    );
  }
}
