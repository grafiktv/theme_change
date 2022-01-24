import 'package:flutter/material.dart';
import 'package:theme_change/change_theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    const borderStyle = OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(36)),
        borderSide: BorderSide(
            color: Color(0xFFeceff1), width: 2));

    return MaterialApp(
    theme: changeTheme(),
      home: Scaffold(
          body: Container(
              //color: Theme.of(context).colorScheme.onBackground,
            //decoration: BoxDecoration(
                //image: DecorationImage(
                  //image: AssetImage('assets/wall.jpg'),
                  //fit: BoxFit.cover,
                //)
            //),
            width: double.infinity,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 0),
              child: Column(children: [
                SizedBox(height: 80, ),
                SizedBox(width: 110, height: 84, child: Image(image: AssetImage('assets/img.png'),),),
                SizedBox(height: 20, ),
                Text("Введите логин в виде 10 цифр номера телефона", textAlign: TextAlign.center,
                  // style: Theme.of(context).textTheme.bodyText2,
                    style: Theme.of(context).textTheme.headline5,
                ),
                SizedBox(height: 20, ),
                SizedBox(width: 224,
                  child: TextField(decoration: InputDecoration(
                    filled: true,
                    //fillColor: Color(0xffd6dce5),
                    enabledBorder: borderStyle,
                    focusedBorder: borderStyle,
                    labelText: ' Телефон',

                  ),),
                ),
                SizedBox(height: 20, ),
                SizedBox(width: 224,
                  child: TextField(obscureText: true,
                    decoration: InputDecoration(

                      filled: true,
                      //fillColor: Color(0xffd6dce5),
                      enabledBorder: borderStyle,
                      focusedBorder: borderStyle,
                      labelText: 'Пароль',
                    ),),
                ),
                SizedBox(height: 28,),
                SizedBox(width: 154, height: 42, child:
                ElevatedButton(onPressed: () {}, child: Text("Войти"),
                  style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(36.0),
                      )
                  ),
                )
                ),
                SizedBox(height: 32, ),
                InkWell(child: Text('Регистрация', style: Theme.of(context).textTheme.bodyText2,),  onTap: () {}),
                SizedBox(height: 20, ),
                InkWell(child: Text('Забыли пароль?', style: Theme.of(context).textTheme.bodyText2,),  onTap: () {}),
              ] , ),
            ),
          )
      ),
    );
  }
}

