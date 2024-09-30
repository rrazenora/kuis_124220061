import 'package:flutter/material.dart';
import 'login.dart';
import 'daftarmenu.dart';
import 'detailorder.dart';

class HomePage extends StatelessWidget {
  final String username;
  const HomePage({super.key, required this.username});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Hallo, $username' '\nMau makan apa hari ini?'),
        actions: [
          IconButton(
            icon: const Icon(Icons.logout),
            color: Colors.white,
            onPressed: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                    builder: (context) => const LoginPage(
                          username: '',
                        )),
              );
            },
          ),
        ],
      ),
      body: GridView.builder(
        itemCount: listMenu.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 0.55,
        ),
        itemBuilder: (context, index) {
          var menu = listMenu[index];
          return InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) => HalamanDetail(menu: menu),
                ),
              );
            },
            child: Card(
              child: Column(
                children: [
                  Flexible(
                    flex: 5,
                    child: Container(
                      color: Colors.grey,
                      child: Hero(
                        tag: menu.nama,
                        child: Image.asset(
                          'assets/images/banner.webp',
                          height: 200,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                  Flexible(
                    flex: 1,
                    child: Text(
                      menu.nama,
                      maxLines: 2,
                      textAlign: TextAlign.center,
                      overflow: TextOverflow.ellipsis,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
