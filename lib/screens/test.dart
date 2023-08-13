import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class Group {
  final String name;
  final String description;
  final List<String> participants;

  Group(this.name, this.description, this.participants);
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Group Details',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: GroupPage(),
    );
  }
}

class GroupPage extends StatefulWidget {
  @override
  _GroupPageState createState() => _GroupPageState();
}

class _GroupPageState extends State<GroupPage> {
  List<Group> groups = [
    Group(
      'Flutter Enthusiasts',
      'A group for all Flutter lovers.',
      ['Alice', 'Bob', 'Charlie'],
    ),
    Group(
      'Art and Design',
      'Explore the world of art and design.',
      ['Eve', 'Frank'],
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Group Details'),
      ),
      body: ListView.builder(
        itemCount: groups.length,
        itemBuilder: (BuildContext context, int index) {
          Group group = groups[index];
          return ListTile(
            title: Text(group.name),
            subtitle: Text(group.description),
            trailing: Chip(
              label: Text('${group.participants.length} participants'),
            ),
            onTap: () {
              // Navigate to group details page
            },
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Show dialog to add new group member
          _showAddMemberDialog();
        },
        child: Icon(Icons.add),
      ),
    );
  }

  void _showAddMemberDialog() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Add New Person'),
          content: TextField(
            decoration: InputDecoration(labelText: 'Enter name'),
            onChanged: (value) {
              // Update the value as user types
            },
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text('Cancel'),
            ),
            ElevatedButton(
              onPressed: () {
                // Add the new person to the current group
                setState(() {
                  groups[0].participants.add('New Person'); // Modify accordingly
                });
                Navigator.of(context).pop();
              },
              child: Text('Add'),
            ),
          ],
        );
      },
    );
  }
}
