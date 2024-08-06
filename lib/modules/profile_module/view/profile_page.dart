import 'package:flutter/material.dart';
import 'package:tcg_league/core/widgets/bottom_menu.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const CustomBottomMenu(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [Text('Profile Page')],
      ),
    );
  }
}
