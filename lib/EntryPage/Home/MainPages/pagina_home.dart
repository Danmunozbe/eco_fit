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
          const Expanded(
            child: FittedBox(
              fit: BoxFit.contain, // otherwise the logo will be tiny
              child: FlutterLogo(),
            ),
          ),
        ],
      ),
    );
  }
}
