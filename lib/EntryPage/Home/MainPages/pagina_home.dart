import 'package:flutter/material.dart';

class PaginaHome extends StatelessWidget {
  const PaginaHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: <Widget>[
                const Expanded(
                    child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'search',
                  ),
                )),
                IconButton(onPressed: () => {}, icon: const Icon(Icons.search)),
              ],
            ),
          ),
          GridView.count(
            primary: false,
            padding: const EdgeInsets.all(20),
            crossAxisSpacing: 5,
            mainAxisSpacing: 5,
            crossAxisCount: 3,
            children: <Widget>[
              Container(
                padding: const EdgeInsets.all(8),
                color: Colors.teal[100],
                child: Image.asset(
                  "assets/imgs/clothes_1.png",
                  fit: BoxFit.contain,
                  height: 40,
                ),
              ),
              Container(
                  padding: const EdgeInsets.all(8),
                  color: Colors.teal[200],
                  child: Image.asset(
                    "assets/imgs/clothes_2.png",
                    fit: BoxFit.contain,
                    height: 40,
                  )),
              Container(
                  padding: const EdgeInsets.all(8),
                  color: Colors.teal[300],
                  child: Image.asset(
                    "assets/imgs/clothes_3.png",
                    fit: BoxFit.contain,
                    height: 40,
                  )),
              Container(
                padding: const EdgeInsets.all(8),
                color: Colors.teal[400],
                child: Image.asset(
                  "assets/imgs/clothes_4.png",
                  fit: BoxFit.contain,
                  height: 40,
                ),
              ),
              Container(
                padding: const EdgeInsets.all(8),
                color: Colors.teal[500],
                child: Image.asset(
                  "assets/imgs/clothes_5.png",
                  fit: BoxFit.contain,
                  height: 40,
                ),
              ),
              Container(
                padding: const EdgeInsets.all(8),
                color: Colors.teal[600],
                child: Image.asset(
                  "assets/imgs/clothes_6.png",
                  fit: BoxFit.contain,
                  height: 40,
                ),
              ),
              Container(
                padding: const EdgeInsets.all(8),
                color: Colors.teal[600],
                child: Image.asset(
                  "assets/imgs/clothes_7.png",
                  fit: BoxFit.contain,
                  height: 40,
                ),
              ),
              Container(
                padding: const EdgeInsets.all(8),
                color: Colors.teal[600],
                child: Image.asset(
                  "assets/imgs/clothes_8.png",
                  fit: BoxFit.contain,
                  height: 40,
                ),
              ),
              Container(
                padding: const EdgeInsets.all(8),
                color: Colors.teal[600],
                child: Image.asset(
                  "assets/imgs/clothes_9.png",
                  fit: BoxFit.contain,
                  height: 40,
                ),
              ),
              Container(
                padding: const EdgeInsets.all(8),
                color: Colors.teal[600],
                child: Image.asset(
                  "assets/imgs/clothes_10.png",
                  fit: BoxFit.contain,
                  height: 40,
                ),
              ),
              Container(
                padding: const EdgeInsets.all(8),
                color: Colors.teal[600],
                child: Image.asset(
                  "assets/imgs/clothes_11.png",
                  fit: BoxFit.contain,
                  height: 40,
                ),
              ),
              Container(
                padding: const EdgeInsets.all(8),
                color: Colors.teal[600],
                child: Image.asset(
                  "assets/imgs/clothes_1.png",
                  fit: BoxFit.contain,
                  height: 40,
                ),
              ),
              Container(
                padding: const EdgeInsets.all(8),
                color: Colors.teal[600],
                child: Image.asset(
                  "assets/imgs/clothes_4.png",
                  fit: BoxFit.contain,
                  height: 40,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
