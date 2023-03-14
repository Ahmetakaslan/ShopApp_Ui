import 'package:flutter/material.dart';

class FirstStack extends StatelessWidget {
   Size size;
   FirstStack(this.size);

  @override
  Widget build(BuildContext context) {
   Size size=MediaQuery.of(context).size;
    return Container(
      width: size.width,
      height: size.height * 0.25,
      child: Stack(
        children: [
          Container(
            padding: EdgeInsets.only(bottom: 20),
            height: size.height * 0.25 - 20,
            decoration: BoxDecoration(
              color: Colors.green,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(35),
                bottomRight: Radius.circular(35),
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  child: Text("Merhaba Ahmet",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 25)),
                ),
                Spacer(),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8),
                  child: Container(
                    height: 70,
                    width: 70,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white,
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(50),
                      child: Image.asset(
                        "assets/resimler/avatar.png",
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
     
          Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                        offset: Offset(0, 10),
                        blurRadius: 50,
                        color: Colors.black.withOpacity(0.40))
                  ],
                ),
                child: TextFormField(
                  decoration: InputDecoration(
                      contentPadding: EdgeInsets.symmetric(
                          horizontal: 15, vertical: 15),
                      enabledBorder: InputBorder.none,
                      focusedBorder: InputBorder.none,
                      hintText: "Ara",
                      suffixIcon: Icon(Icons.search)),
                ),
              ))
        ],
      ),
    );
  }
}
