import'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import'signin.dart';
import 'registration.dart';
void main()=>runApp(MaterialApp(
  debugShowCheckedModeBanner: false,
  initialRoute: '/',
  routes:{
    '/':(context)=>Home(),
    '/signin':(context)=>Signin(),
    '/registration':(context)=>Registration(),
  },
));

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
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
            padding: const EdgeInsets.only(top: 10),
            child: Center(
              child: Text('NOT PLASTIC FANTASTIC',style: TextStyle(fontSize: 12,fontWeight: FontWeight.w800,color: Color.fromRGBO(41, 103, 57, 1)),),
            ),
          ),
           Padding(
             padding: const EdgeInsets.only(top: 2),
             child: Container(
               width: 339,
                 height: 225,
                 child: Image.asset('assets/image4.png')),
           ),
          Padding(
            padding: const EdgeInsets.only(top: 11),
            child: Text('Герои нашего времени ',style: TextStyle(fontSize: 24,fontWeight: FontWeight.w800,color: Color.fromRGBO(95, 120, 64, 1)),),
          ),
           Padding(
             padding: const EdgeInsets.only(left: 43,right: 30),
             child: Text('''По случаю Международного дня Матери-Земли ПРООН в Туркменистане совместно с Обществом охраны природы Туркменистана организовала “Зеленые игры” для учащихся общеобразовательной школы №1 города Анау,Ахалский велаят ''',style: TextStyle(fontSize: 12),),
           ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Color.fromRGBO(41, 105, 64, 1),
        items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: SvgPicture.asset("assets/icons/Rectangle 1.svg",),
          label: "gh",
        ),
        BottomNavigationBarItem(
          icon: Container(
            width: 20,
              height: 20,
              child: SvgPicture.asset("assets/Home.svg")),
          label: "Главная",
        ),

          BottomNavigationBarItem(
            icon: Icon(Icons.contacts),
            label: "Контакты",
          ),

          BottomNavigationBarItem(
            icon: Icon(Icons.list_alt),
            label: "Отзывы",
          ),
          
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: "Профиль",
          ),
      ],),
    );
  }
}

