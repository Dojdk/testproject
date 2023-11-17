import 'package:flutter/material.dart';

class CustomBottomBar extends StatelessWidget {
  const CustomBottomBar({super.key});

  @override
  Widget build(BuildContext context) {
    return  SizedBox(
        height: 120,
        child: ClipRRect(
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(30.0),
            topRight: Radius.circular(30.0),
          ),
          child: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            showSelectedLabels: false,
            showUnselectedLabels: false,
            items: <BottomNavigationBarItem>[
              const BottomNavigationBarItem(
                icon: Icon(Icons.receipt_long_rounded),
                label: '',
              ),
              const BottomNavigationBarItem(
                icon: Icon(Icons.search),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: Container(
                  padding: const EdgeInsets.all(10),
                  decoration: const BoxDecoration(
                    color: Colors.red,
                    shape: BoxShape.circle,
                    boxShadow: [
                      BoxShadow(
                        offset: Offset(0, 5),
                        color: Colors.red,
                        blurRadius: 10,
                      ),
                    ],
                  ),
                  child: const Icon(Icons.add, color: Colors.white),
                ),
                label: '',
              ),
              const BottomNavigationBarItem(
                icon: Icon(Icons.notifications),
                label: '',
              ),
              const BottomNavigationBarItem(
                icon: Icon(Icons.message_rounded),
                label: '',
              ),
            ],
            backgroundColor: Colors.white,
            currentIndex: 1,
            unselectedFontSize: 0,
            selectedFontSize: 0,
            unselectedItemColor: Colors.grey,
            selectedItemColor: Colors.red,
          ),
        ),
      );
  }
}