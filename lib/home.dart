import 'package:flutter/material.dart';
import 'about_us.dart';
import 'favourites.dart';
import 'widgets/quote_card.dart';
import 'widgets/quote_screen.dart';
import 'package:provider/provider.dart';




class myHome extends StatelessWidget {
  const myHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Demotivate Yourself Today!!"),
        elevation: 10,
        actions: [
          Container(
            child: Padding(
              padding: EdgeInsetsGeometry.fromLTRB(0, 0, 40, 0),
              child: Row(
                children: [
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.black,
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => AboutScreen()),
                      );
                    },
                    child: Text(
                      "About",
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'Bangers',
                        fontSize: 20,
                      ),
                    ),
                  ),
                  SizedBox(width: 30),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.black,
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => favourites()),
                      );
                    },
                    child: Text(
                      "Favourites",
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'Bangers',
                        fontSize: 20,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      body: Center(child: QuoteCard()),
    );
  }
}
