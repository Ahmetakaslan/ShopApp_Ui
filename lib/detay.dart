import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:mobilya_14_03_2023/main.dart';

class Detay extends StatefulWidget {
  String reimPath;
  String fiyat;
  String isim;
  Detay(this.reimPath, this.fiyat, this.isim);

  @override
  State<Detay> createState() => _DetayState();
}

class _DetayState extends State<Detay> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(),
      bottomNavigationBar: Container(
        height: 70,
        decoration: BoxDecoration(),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Expanded(
                child: Container(
              height: 70,
              child: ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.green),
                ),
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (context) => AlertDialog(
                      content: Text("Ürünü Satın Almak istiyormusunuz?"),
                      title: Text("Ürün Satın Alma"),
                      actions: [
                        TextButton(
                            onPressed: () {
                              ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(
                                  //burası güzel bir özzelik
                                  /**
                              * 

                                     onVisible: () {
                                    Navigator.pushReplacement(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) => MyApp(),
                                        ));
                                  },


                              */
                                  elevation: 0,
                                  backgroundColor: Colors.transparent,
                                  duration: Duration(seconds: 1),
                                  content: Container(
                                    decoration: BoxDecoration(
                                      color: Colors.green,
                                      borderRadius: BorderRadius.circular(30),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.symmetric(
                                          vertical: 2),
                                      child: Center(
                                        child: Text(
                                          "Sipariş Verildi",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 25),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              );
                         

                              Future.delayed(Duration(seconds: 1), () {
                                try {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => MyApp()),

                                  );
                                
                                } catch (e) {
                                  print(
                                      "An error occurred while navigating to the new screen: $e");
                                }
                              });
                            },
                            child: Text("Satın al")),
                        TextButton(
                          onPressed: () {
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(
                                elevation: 0,
                                backgroundColor: Colors.transparent,
                                duration: Duration(seconds: 1),
                                content: Container(
                                  decoration: BoxDecoration(
                                    color: Colors.black,
                                    borderRadius: BorderRadius.circular(30),
                                  ),
                                  child: Padding(
                                    padding:
                                        const EdgeInsets.symmetric(vertical: 2),
                                    child: Center(
                                        child: Text(
                                      "Iptal Edildi",
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 25),
                                    )),
                                  ),
                                ),
                              ),
                            );
                            Navigator.pop(context);
                          },
                          child: Text("Iptal"),
                        ),
                      ],
                    ),
                  );
                },
                child: Text("Satın Al"),
              ),
            )),
            Expanded(
              child: Container(
                height: 70,
                child: ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.red),
                    ),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => MyApp(),
                          ));
                    },
                    child: Text("iptal ")),
              ),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: size.height * .5,
              width: size.width,
              child: Image.asset("assets/resimler/${widget.reimPath}"),
            ),
            Container(
              width: size.width,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    "${widget.isim}",
                    style: TextStyle(fontSize: 40),
                  ),
                  Text("${widget.fiyat} Tl", style: TextStyle(fontSize: 40))
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
