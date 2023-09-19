import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islami/hadeth/hadethdetails.dart';
import 'package:islami/mytheme.dart';
import 'package:islami/providers/app_cofig_provider.dart';
import 'package:islami/quran/soradetails.dart';
import 'package:islami/settings.dart';
import 'package:provider/provider.dart';

import 'hometabs/home_screen.dart';

//================================>
void main() {
  runApp(ChangeNotifierProvider(
      create: (BuildContext context) => AppConfigprovider(), child: MyApp()));
}

class MyApp extends StatelessWidget {
//  const MyApp({key? key}) : super(key: key) ;
  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<AppConfigprovider>(context);
    return MaterialApp(
      initialRoute: HomeScreen.routename,
      routes: {
        HomeScreen.routename: (context) => HomeScreen(),
        "Soradetails": (context) => Soradetails(),
        "hadeth details": (context) => hadethdetails(),
        "Settingstab": (context) => Settingstab(),

        //  "Login" :(context) => LoginScreen() ,
        //  "Login" :(context) => LoginScreen() ,
      },
      theme: MyTheme.lightmode,
      darkTheme: MyTheme.darkmode,
      debugShowCheckedModeBanner: false,
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      locale: Locale(provider.applang),
      themeMode: provider.appTheme,
    );
  }
}
