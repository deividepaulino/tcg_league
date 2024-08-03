import 'package:flutter/material.dart';
import 'package:tcg_league/modules/index_module/models/profile_model.dart';

class IndexProfileWidget extends StatefulWidget {
  final ProfileModel profile;
  const IndexProfileWidget({super.key, required this.profile});

  @override
  State<IndexProfileWidget> createState() => IndexProfileWidgetState();
}

class IndexProfileWidgetState extends State<IndexProfileWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.25,
      color: Theme.of(context).primaryColor,
      // ignore: prefer_const_constructors
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          const CircleAvatar(
            radius: 60,
            // backgroundImage: const AssetImage('assets/images/user.png'),
          ),
          Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            Text(
              widget.profile.userProfileName,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 20,
              ),
            ),
            Text(
              widget.profile.userName,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 20,
              ),
            ),
            const Text('V  -  D  -  A'),
            Text(
              '${widget.profile.wdd.wins} - ${widget.profile.wdd.defeats} - ${widget.profile.wdd.draws}',
              style: const TextStyle(
                color: Colors.white,
                fontSize: 20,
              ),
            ),
          ]),
        ],
      ),
    );
  }
}
