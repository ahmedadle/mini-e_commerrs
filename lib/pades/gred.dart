import 'package:flutter/material.dart';
import 'package:shoping_app/core/routes/routes_name.dart';
import 'package:shoping_app/pades/prodact_view.dart';

class Gred extends StatefulWidget {
  const Gred({super.key});

  @override
  State<Gred> createState() => _GredState();
}

class _GredState extends State<Gred> {
  List<Map> products = [
    {
      'img': 'assets/images/pasket.jpg',
      'title': 'product 1',
      'des': 'description...',
      'price': '340\$'
    },
    {
      'img': 'assets/images/balling.jpg',
      'title': 'product 2',
      'des': 'description...',
      'price': '340\$'
    },
    {
      'img': 'assets/images/tnis.jpg',
      'title': 'product 4',
      'des': 'description...',
      'price': '340\$'
    },
    {
      'img': 'assets/images/pasket.jpg',
      'title': 'product 1',
      'des': 'description...',
      'price': '340\$'
    },
    {
      'img': 'assets/images/balling.jpg',
      'title': 'product 2',
      'des': 'description...',
      'price': '340\$'
    },
    {
      'img': 'assets/images/tnis.jpg',
      'title': 'product 4',
      'des': 'description...',
      'price': '340\$'
    },
    {
      'img': 'assets/images/fot.jpg',
      'title': 'product 3',
      'des': 'description...',
      'price': '340\$'
    },
  ];



  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 3,
      child: GridView.builder(
        shrinkWrap: true,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, crossAxisSpacing: 5, mainAxisSpacing: 5),
        itemCount: products.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ProdactView(
                        img: products[index]['img'],
                        titel: products[index]['title']!,
                        des: products[index]['des']!,
                        price: products[index]['price']!,
                      ),
                    ),
                  );
            },
            child: Container(
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.all(1),
              margin: EdgeInsets.all(2),
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 247, 247, 247),
                borderRadius: BorderRadius.all(Radius.circular(15)),
              ),
              child: Column(
                children: [
                  Expanded(
                    child: Image.asset(
                      alignment: Alignment.topLeft,
                      products[index]['img'],
                      fit: BoxFit.fitWidth,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(5),
                    child: Text(
                      products[index]['title'],
                      style: const TextStyle(
                        color: Colors.black,
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(5),
                    child: Text(
                      products[index]['des'],
                      style: const TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(5),
                    child: Text(
                      products[index]['price'],
                      style: const TextStyle(
                        color: Colors.orangeAccent,
                      ),
                    ),
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
