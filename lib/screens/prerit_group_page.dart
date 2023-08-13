import 'package:flutter/material.dart';

class GroupPage extends StatefulWidget {
  const GroupPage({super.key});

  @override
  State<GroupPage> createState() => _GroupPageState();
}

class _GroupPageState extends State<GroupPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Test'),
        actions: [
          InkWell(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Image.asset('assets/icons/create_group.png',height: 38,width: 38),
            ),
            onTap: () {},
          )
        ],
      ),
      drawer: Drawer(
        backgroundColor: const Color(0xffdadada),
        child: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 40),
          children: [
            Row(
              children: [
                Image.asset('assets/icons/group.png',scale: 0.7,),
                const SizedBox(width: 8),
                const Text(
                  'Create Group',
                  style: TextStyle(
                    fontSize: 20
                  ),
                )
              ],
            ),
            const SizedBox(height: 10),
            const Text(
              'Member of Group',
              style: TextStyle(
                  fontSize: 20
              ),
            ),
            const SizedBox(height: 10),
            const Text(
              'Group Name',
              style: TextStyle(
                  fontSize: 20
              ),
            ),
            const SizedBox(height: 10),
            const Text(
              'Group Name',
              style: TextStyle(
                  fontSize: 20
              ),
            ),
          ]
        ),
      ),
    );
  }
}
