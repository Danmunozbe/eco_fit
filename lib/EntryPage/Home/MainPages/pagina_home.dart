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
          Expanded(
            child: GridView.count(
              primary: false,
              padding: const EdgeInsets.all(20),
              crossAxisSpacing: 5,
              mainAxisSpacing: 5,
              crossAxisCount: 3,
              children: <Widget>[
                Container(
                  padding: const EdgeInsets.all(8),
                  color: Colors.teal[600],
                  child: Image.asset("assets/imgs/clothes_1.jpg",
                      fit: BoxFit.contain, height: 20, width: 20),
                ),
                Container(
                    padding: const EdgeInsets.all(8),
                    color: Colors.teal[600],
                    child: Image.asset("assets/imgs/clothes_2.jpg",
                        fit: BoxFit.contain, height: 20, width: 20)),
                Container(
                    padding: const EdgeInsets.all(8),
                    color: Colors.teal[600],
                    child: Image.asset(
                      "assets/imgs/clothes_3.jpg",
                      fit: BoxFit.contain,
                      height: 40,
                    )),
                Container(
                  padding: const EdgeInsets.all(8),
                  color: Colors.teal[600],
                  child: Image.asset(
                    "assets/imgs/clothes_4.jpg",
                    fit: BoxFit.contain,
                    height: 40,
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(8),
                  color: Colors.teal[600],
                  child: Image.asset("assets/imgs/clothes_5.jpg",
                      fit: BoxFit.contain, height: 20, width: 20),
                ),
                Container(
                  padding: const EdgeInsets.all(8),
                  color: Colors.teal[600],
                  child: Image.asset("assets/imgs/clothes_6.jpg",
                      fit: BoxFit.contain, height: 20, width: 20),
                ),
                Container(
                  padding: const EdgeInsets.all(8),
                  color: Colors.teal[600],
                  child: Image.asset(
                    "assets/imgs/clothes_7.jpg",
                    fit: BoxFit.contain,
                    height: 40,
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(8),
                  color: Colors.teal[600],
                  child: Image.asset("assets/imgs/clothes_8.jpg",
                      fit: BoxFit.contain, height: 20, width: 20),
                ),
                Container(
                  padding: const EdgeInsets.all(8),
                  color: Colors.teal[600],
                  child: Image.asset("assets/imgs/clothes_9.jpg",
                      fit: BoxFit.contain, height: 20, width: 20),
                ),
                Container(
                  padding: const EdgeInsets.all(8),
                  color: Colors.teal[600],
                  child: Image.asset("assets/imgs/clothes_10.jpg",
                      fit: BoxFit.contain, height: 20, width: 20),
                ),
                Container(
                  padding: const EdgeInsets.all(8),
                  color: Colors.teal[600],
                  child: Image.asset("assets/imgs/clothes_11.jpg",
                      fit: BoxFit.contain, height: 20, width: 20),
                ),
                Container(
                  padding: const EdgeInsets.all(8),
                  color: Colors.teal[600],
                  child: Image.asset("assets/imgs/clothes_1.jpg",
                      fit: BoxFit.contain, height: 20, width: 20),
                ),
                Container(
                  padding: const EdgeInsets.all(8),
                  color: Colors.teal[600],
                  child: Image.asset("assets/imgs/clothes_4.jpg",
                      fit: BoxFit.contain, height: 20, width: 20),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
