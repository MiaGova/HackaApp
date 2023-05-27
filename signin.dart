import 'package:flutter/material.dart';
class Signin extends StatefulWidget {
  const Signin({Key? key}) : super(key: key);

  @override
  State<Signin> createState() => _SigninState();
}
var name = GlobalKey<FormState>();
var number = GlobalKey<FormState>();
var adress = GlobalKey<FormState>();
var password = GlobalKey<FormState>();
Key n="" as Key;
String num = '';
String a = '';
String p = '';
class _SigninState extends State<Signin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(250, 243, 214, 1),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: Padding(
          padding: const EdgeInsets.only(top: 25,bottom: 13),
          child: Image.asset('assets/Sort.png'),
        ),
        title: Padding(
          padding: const EdgeInsets.only(top: 14,bottom: 10),
          child: Image.asset('assets/Rectangle 2.png'),
        ),
        centerTitle: true,
        actions: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 25,bottom: 13,right: 15),
                child: InkWell(
                  onTap: (){
                    Navigator.pushNamed(context, '/signin');
                  },
                  child: Image.asset('assets/Sign_in_squre.png'),
                ),
              ),
              InkWell(
                onTap: (){
                  Navigator.pushNamed(context, '/registration');
                },
                child: Padding(
                  padding: const EdgeInsets.only(top: 25,bottom: 13,right: 15),
                  child: Image.asset('assets/User_add_alt.png'),
                ),
              )
            ],
          )
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 48,left: 65,right: 65,bottom: 50),
            child: Text('Регистрация',style: TextStyle(fontSize: 32),),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20,left: 66,right: 34),
            child: TextField(
              decoration: InputDecoration(
                labelText: "Введите имя",
                labelStyle: TextStyle(color: Colors.black)
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20,left: 66,right: 34),
            child: TextField(
              decoration: InputDecoration(
                labelText: "Введите номер телефона",
                  labelStyle: TextStyle(color: Colors.black)
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20,left: 66,right: 34),
            child: TextField(
              decoration: InputDecoration(
                labelText: "Введите пароль",
                  labelStyle: TextStyle(color: Colors.black)
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 31,left: 66,right: 34,),
            child: InkWell(
              onTap: (){
    Navigator.pushNamedAndRemoveUntil(context, '/', (route) => false);
    },
              child: Container(
                width: 245,
                height: 51,
                decoration: BoxDecoration(
                  color: Color.fromRGBO(41, 105, 64, 1),
                  border:Border.all(color: Color.fromRGBO(41, 105, 64, 1)),
                  borderRadius: BorderRadius.circular(40),
                ),
                  child: Center(child: Text('Регистрация',style: TextStyle(color: Colors.black,fontSize: 24,),))),),
          )
        ],
      ),
    );
  }
}
