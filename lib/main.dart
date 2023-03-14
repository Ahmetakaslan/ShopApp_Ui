import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mobilya_14_03_2023/detay.dart';
import 'package:mobilya_14_03_2023/firstStack.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorSchemeSeed: Colors.green,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        elevation: 0,
        leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.menu),
        ),
      ),
      body: MyBody(size),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(offset: Offset(0, 2), blurRadius: 40, color: Colors.green)
          ],
          color: Colors.white,
        ),
        height: 60,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconButton(
                onPressed: () {},
                icon: SvgPicture.asset("assets/resimler/flower.svg")),
            IconButton(
                onPressed: () {},
                icon: SvgPicture.asset("assets/resimler/kalp.svg")),
            IconButton(
                onPressed: () {},
                icon: SvgPicture.asset("assets/resimler/kullanici.svg")),
          ],
        ),
      ),
    );
  }

  ListView MyBody(Size size) {
    return ListView(
      children: [
        FirstStack(size),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                alignment: Alignment.center,
                child: secondStack(),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                    height: 35,
                    decoration: BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: TextButton(
                        onPressed: () {},
                        child: Text(
                          "Dahası",
                          style: TextStyle(color: Colors.white),
                        ))),
              ),
            ],
          ),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              Resmim(size, "vazo.jpg", "vazo", "80"),
              Resmim(size, "masa2.jpg", "masa", "250"),
              Resmim(size, "sandalye.jpg", "Sandalye", "100"),
              Resmim(size, "masa.jpg", "Masa", "550"),
            ],
          ),
        ),
        secondStack2(),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              Resmim2(size, "mutfak.jpg", "dolab", "3000"),
              Resmim2(size, "cicek2.png", "Vazo", "60"),
              Resmim2(size, "vazo.jpg", "vazo", "80"),
              Resmim2(size, "sandalye.jpg", "Sandalye", "100"),
              Resmim2(size, "masa.jpg", "Masa", "550"),
            ],
          ),
        ),
      ],
    );
  }

  GestureDetector Resmim2(Size size, String path, String isim, String fiyat) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => Detay(path,fiyat,isim),
          ),
        );
      },
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(),
              child: ClipRRect(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(25),
                    topRight: Radius.circular(25)),
                child: Image.asset(
                  "assets/resimler/${path}",
                  fit: BoxFit.cover,
                ),
              ),
              width: size.width * .4,
              height: size.height * .3,
            ),
            Container(
              width: size.width * .4,
              decoration: BoxDecoration(color: Colors.white, boxShadow: [
                BoxShadow(
                    offset: Offset(0, 10), blurRadius: 50, color: Colors.black)
              ]),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    "${isim}",
                    style: TextStyle(fontSize: 20),
                  ),
                  Text("${fiyat}", style: TextStyle(fontSize: 20))
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  GestureDetector Resmim(Size size, String path, String isim, String fiyat) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => Detay(path,fiyat,isim),
          ),
        );
      },
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(),
              child: ClipRRect(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(25),
                    topRight: Radius.circular(25)),
                child: Image.asset(
                  "assets/resimler/${path}",
                  fit: BoxFit.cover,
                ),
              ),
              width: size.width * .3,
              height: size.height * .3,
            ),
            Container(
              width: size.width * .3,
              decoration: BoxDecoration(color: Colors.white, boxShadow: [
                BoxShadow(
                    offset: Offset(0, 10), blurRadius: 50, color: Colors.black)
              ]),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text("${isim}", style: TextStyle(fontSize: 20)),
                  Text("${fiyat}", style: TextStyle(fontSize: 20))
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Stack secondStack() {
    return Stack(
      alignment: Alignment.center,
      children: [
        Text(
          "Trendler",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
      ],
    );
  }

  Padding secondStack2() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Stack(
        alignment: Alignment.center,
        children: [
          SizedBox(
            height: 5,
          ),
          Text(
            "Öneriler",
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 5,
          )
        ],
      ),
    );
  }
}
