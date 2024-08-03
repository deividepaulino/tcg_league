import 'package:flutter/material.dart';

class CustomBottomMenu extends StatefulWidget {
  const CustomBottomMenu({super.key});

  @override
  State<CustomBottomMenu> createState() => _CustomBottomMenuState();
}

class _CustomBottomMenuState extends State<CustomBottomMenu> {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: 0,
      elevation: 10,
      selectedItemColor: Colors.white,
      unselectedItemColor: Theme.of(context).primaryColorLight,
      showUnselectedLabels: true,
      onTap: (i) {
        print(i);
      },
      items: [
        BottomNavigationBarItem(
          backgroundColor: Theme.of(context).primaryColor,
          icon: Icon(Icons.emoji_events),
          label: 'Torneios',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.card_travel),
          label: 'Decks',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.add),
          label: 'Entrar',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.history),
          label: 'Histórico',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person),
          label: 'Perfil',
        ),
      ],
    );
  }
}
