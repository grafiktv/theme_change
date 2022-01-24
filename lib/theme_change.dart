import 'package:firstedu/string1.dart';
import 'package:flutter/material.dart';

class ThemeDemoApp extends StatelessWidget {
  const ThemeDemoApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ThemeDemoScreen(),
    );
  }
}

class ThemeDemoScreen extends StatefulWidget {
  const ThemeDemoScreen({Key? key}) : super(key: key);

  @override
  _ThemeDemoScreenState createState() => _ThemeDemoScreenState();
}

class _ThemeDemoScreenState extends State<ThemeDemoScreen> {
  double _currenySliderValue = 20;
  bool _isDarkTheme = false;

  Widget _navigationDraw() => Drawer(...);

  PreferredSizeWidget _appBar() => AppBar(
    title: Text('Демо темы',),
    actions: [
      IconButton(onPressed: ()  {}, icon: const Icon(Icons.settings), tooltip: 'Уведомления',),
      IconButton(onPressed: ()  {}, icon: const Icon(Icons.settings), tooltip: 'Уведомления',),
    ],
  );


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBar(),
      drawer: _navigationDraw(),
      body: SingleChildScrollView(
        child: Center(
            child: Column(
                children: [
                Text('Заголовок', style: Theme.of(context).textTheme.headline5),
            Container(
              height: 100,
              color: Theme.of(context).colorScheme.secondary,
            ),
            Row(
              children: const [
                Text('Логин: '),
                Expanded(child: TextField()),
              ],
            )
            Row(
        children: const [
        Text('Пароль: '),
        Expanded(child: TextField()),
        ],
      ),
      ElevatedButton(onPressed: () {}, child: Text('Войти')),
      Text(Strings.longbodyText),
      Slider(value: _currenySliderValue,
        max: 100,
        divisions: 5,
        label: _currenySliderValue.round().toString(),
        onChanged: (double value) {
          setState(() {
            _currenySliderValue = value;
          });
        },
      ),
    ),
    );
  }
}
