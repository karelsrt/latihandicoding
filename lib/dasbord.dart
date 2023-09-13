import 'package:flutter/material.dart';
import 'package:latihandicoding/home.dart';
import 'package:latihandicoding/profil.dart';

class Dasbord extends StatefulWidget {
  const Dasbord({Key? key}) : super(key: key);

  @override
  State<Dasbord> createState() => _DasbordState();
}

class _DasbordState extends State<Dasbord> {
  int? selectedIndex = 0;

  // Fungsi untuk memperbarui selectedIndex
  void updateIndex(int newIndex) {
    setState(() {
      selectedIndex = newIndex;
    });
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      initialIndex: selectedIndex ??
          0, // Menggunakan selectedIndex yang dideklarasikan di _DasbordState
      child: Scaffold(
        body: IndexedStack(
          index: selectedIndex ??
              0, // Menggunakan selectedIndex yang dideklarasikan di _DasbordState
          children: [
            Home(),
            const Profil(),
            const Profil(),
            const Profil(),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          elevation: 0,
          currentIndex: selectedIndex ??
              0, // Menggunakan selectedIndex yang dideklarasikan di _DasbordState
          onTap: (newIndex) =>
              updateIndex(newIndex), // Memanggil fungsi updateIndex
          type: BottomNavigationBarType.fixed,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
              ),
              label: "Home",
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.history,
              ),
              label: "History",
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.discount,
              ),
              label: "Promo",
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.person,
              ),
              label: "User",
            ),
          ],
        ),
      ),
    );
  }
}
