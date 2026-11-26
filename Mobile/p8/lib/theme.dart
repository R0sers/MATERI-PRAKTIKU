  import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ThemeProvider extends ChangeNotifier {

  ThemeMode _themeMode = ThemeMode.light;
  ThemeMode get themeMode=> _themeMode;
  bool get isDarkMode => _themeMode == .dark;

  static const _themekey = 'theme_key'; 

  ThemeProvider (){
    _loadTheme();

  }

  //ASYNC = Menjalankan proses berbeda tanp amenggangu proses lain
  void _loadTheme() async{
      final prefs = await SharedPreferences.getInstance();
      final isDark = prefs.getBool(_themekey) ?? false; 
      _themeMode = isDark? ThemeMode.dark:ThemeMode.light;

      //Notify Listener : Untuk Memberitahu Widget ketika ada perubahan
      notifyListeners();
  }

  void toggleTheme(bool isOn) async{
    _themeMode = isOn? ThemeMode.dark:ThemeMode.light;
    notifyListeners();
    final prefs = await SharedPreferences.getInstance();
    prefs.setBool(_themekey, isOn);
  } 

  

}