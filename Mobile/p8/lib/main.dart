import 'package:flutter/material.dart';
import 'package:p8/theme.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(
    ChangeNotifierProvider(
        create: (context) => ThemeProvider(),
        child: MyApp(),
      )
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<ThemeProvider>(
        builder: (context,TemaProvider, child) {
          return MaterialApp(
              theme: ThemeData.light(useMaterial3: true),
              darkTheme: ThemeData.dark(useMaterial3: true),
              themeMode: TemaProvider.themeMode,
              debugShowCheckedModeBanner: false,
              title: 'Setting Tema',
              home: HomePage(),
          );
        },
      );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);
    final isDark = themeProvider.isDarkMode;
    final colorScheme = Theme.of(context).colorScheme;

    return Scaffold(
      appBar: AppBar(
        title: Text('Pengaturan Tema'),
        centerTitle: true,
        leading: Icon(
          isDark ? Icons.dark_mode : Icons.light_mode
        ),
      ),
      body: Center(
        child : Padding(
            padding:EdgeInsets.all(20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  isDark ? Icons.dark_mode : Icons.light_mode,
                  size: 250,
                  color: isDark? Colors.amber:const Color.fromARGB(255, 248, 146, 29),
                ),
                Text(
                  isDark ? 'Dark Mode' : 'Light Mode',
                  style: TextStyle(
                    fontSize: 50,
                    fontWeight: .bold,
                    color: colorScheme.primary
                  ),
                ),
                Card(
                  child: SwitchListTile(
                       secondary: Icon(
                        isDark ? Icons.dark_mode : Icons.light_mode
                       ),
                       title: Text(isDark ? 'Aktif' : 'Tidak Aktif'),
                       value: isDark,
                       onChanged: (value) {
                         themeProvider.toggleTheme(value);
                       },
                    ),
                )
              ],
            ),
          )
      ),
    );
  }
}

