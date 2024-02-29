import 'package:flutter/material.dart';

class NearPumpScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Nearby Pumps'),
      ),
      body: ListView(
        children: [
          ListTile(
            leading: Icon(Icons.local_gas_station),
            title: Text('Pump 1'),
            subtitle: Text('Address: 123 Main Street'),
            onTap: () {
              // Add navigation logic or any action when the pump is tapped
            },
          ),
          ListTile(
            leading: Icon(Icons.local_gas_station),
            title: Text('Pump 2'),
            subtitle: Text('Address: 456 Elm Street'),
            onTap: () {
              // Add navigation logic or any action when the pump is tapped
            },
          ),
          ListTile(
            leading: Icon(Icons.local_gas_station),
            title: Text('Pump 3'),
            subtitle: Text('Address: 789 Oak Street'),
            onTap: () {
              // Add navigation logic or any action when the pump is tapped
            },
          ),
          // Add more ListTile widgets for other pumps as needed
        ],
      ),
    );
  }
}
