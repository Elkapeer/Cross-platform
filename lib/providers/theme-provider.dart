
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ThemeProvider extends ChangeNotifier {

  static ThemeProvider getInstance(BuildContext ctx){
    return Provider.of<ThemeProvider>(ctx , listen: false);
  }

  ThemeData _theme;
  String _themeName;

  ThemeData get getTheme {
    return _theme;
  }

  String get getThemeName {
    return _themeName;
  }

  ThemeProvider() : _theme = ThemeData.dark() , _themeName = "light" {
    init();
  }

  void init(){
    //TODO: load the theme data from settings (shared_prefs)

    //now assign the theme based on the name ..
    _updateTheme();
  }

  bool isDark(){
    return _themeName == "dark";
  }
  void _updateTheme(){
    if (_themeName == "dark"){
      _theme = ThemeData.dark().copyWith(
          scaffoldBackgroundColor: Colors.black,
          inputDecorationTheme: const InputDecorationTheme(
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: Colors.blueGrey
              )
            )
          ),
          appBarTheme: ThemeData.dark().appBarTheme.copyWith(
            backgroundColor: Colors.black,
            titleTextStyle: const TextStyle(
                color: Colors.white
            ),
            elevation: 0,
            iconTheme: const IconThemeData(
              color: Colors.white,
            ),
          ),
          elevatedButtonTheme: ElevatedButtonThemeData(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.white,
                foregroundColor: Colors.black,
                splashFactory: NoSplash.splashFactory,
                textStyle: const TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                )
              ),
          ),
          outlinedButtonTheme: OutlinedButtonThemeData(
            style: OutlinedButton.styleFrom(
              backgroundColor: Colors.transparent,
              foregroundColor: Colors.white,
              side: const BorderSide(
                color: Colors.white,
              )
            ),
          ),
        bottomSheetTheme: const BottomSheetThemeData(
          backgroundColor: Colors.black,
        )
      );
    }else if (_themeName == "light"){
      _theme = ThemeData.light().copyWith(
        scaffoldBackgroundColor: Colors.white,
        inputDecorationTheme: const InputDecorationTheme(
            enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                    color: Colors.blueGrey
                )
            )
        ),
        appBarTheme: ThemeData.light().appBarTheme.copyWith(
          backgroundColor: Colors.white,
          titleTextStyle: const TextStyle(
            color: Colors.black
          ),
          elevation: 0,
          iconTheme: const IconThemeData(
            color: Colors.black,
          ),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
              backgroundColor: Colors.black,
              foregroundColor: Colors.white,
              splashFactory: NoSplash.splashFactory,
              textStyle: const TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              )
          ),
        ),
        outlinedButtonTheme: OutlinedButtonThemeData(
          style: OutlinedButton.styleFrom(
            backgroundColor: Colors.transparent,
            foregroundColor: Colors.black,
              side: const BorderSide(
                color: Colors.black,
              )
          ),
        ),
        bottomSheetTheme: const BottomSheetThemeData(
          backgroundColor: Colors.white,
        ),
      );
    }
  }

  void setTheme(String theme){
    _themeName = theme;
    //TODO: write the theme name to the settings

    _updateTheme();
    notifyListeners();
  }

}