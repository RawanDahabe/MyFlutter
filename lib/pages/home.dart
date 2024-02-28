import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "Breakfast",
          style: TextStyle(
            color: Color.fromARGB(255, 109, 16, 126),
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: <Widget>[
          IconButton(
            icon: const Icon(
              Icons.notifications,
              color: Color.fromARGB(255, 109, 16, 126),
            ),
            onPressed: () {},
          )
        ],
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {},
          icon: IconButton(
            icon: const Icon(
              Icons.menu,
              color: Color.fromARGB(255, 109, 16, 126),
            ),
            onPressed: () {},
          ),
        ),
        shape: const RoundedRectangleBorder(),
      ),
      body: ListView(
        children: [
          Container(
            padding: const EdgeInsets.all(15),
            child: const TextField(
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
              decoration: InputDecoration(
                hintText: "Options",
                border: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Color.fromARGB(255, 109, 16, 126),
                    width: 300,
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Color.fromARGB(255, 109, 16, 126),
                  ),
                ),
              ),
            ),
          ),
          GridView.count(
            shrinkWrap: true,
            crossAxisCount: 2,
            padding: const EdgeInsets.all(5),
            mainAxisSpacing: 20,
            children: [
              _buildGridItem(
                'assets/image1.jpeg',
                'Salad Fruit',
              ),
              _buildGridItem('assets/image2.jpeg', 'Strawbery'),
              _buildGridItem('assets/image3.jpeg', 'Grapes'),
              _buildGridItem('assets/image4.jpeg', 'Figs'),
            ],
          ),
          const SizedBox(height: 10),
          Center(
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(255, 109, 16, 126),
                minimumSize: const Size(300, 40),
              ),
              child: const Text(
                'Submit',
              ),
            ),
          ),
        ],
      ),
    );
  }
}

Widget _buildGridItem(
  String imagePath,
  String caption,
) {
  return Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Image.asset(
        imagePath,
        width: 150,
        height: 150,
      ),
      const SizedBox(height: 5),
      Text(
        caption,
        style: const TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
      ),
    ],
  );
}
