import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          alignment: Alignment.topCenter,
          margin: const EdgeInsets.only(top: 10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset('assets/coffee_bean.png'),
                      ],
                    ),
                  ),
                  const Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Robert Steven',
                              style: TextStyle(
                                fontSize: 20,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.directions_car),
                          ],
                        ),
                      ],
                    ),
                  ),
                  const Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Log Out',
                          style: TextStyle(fontSize: 25),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: double
                        .infinity, // Set the width to stretch horizontally
                    color: Colors.blue, // Background color
                    child: const Text(
                      'Online | Battery: 90%',
                      style: TextStyle(fontSize: 18),
                    ),
                  ),
                ],
              ),
              GridView.count(
                shrinkWrap: true,
                crossAxisCount: 3,
                children: [
                  _buildGridItem(Icons.map, 'Map Devices'),
                  _buildGridItem(Icons.location_on, 'Live Location'),
                  _buildGridItem(Icons.history, 'History Location'),
                  _buildGridItem(Icons.pin, 'Set Geofence'),
                  _buildGridItem(Icons.info, 'Detail Info'),
                  _buildGridItem(Icons.edit, 'Edit Device'),
                  _buildGridItem(Icons.phone, 'Change Center Number'),
                  _buildGridItem(Icons.block, 'Disabled Menu'),
                  _buildGridItem(Icons.timer, 'Set GPS Interval'),
                  _buildGridItem(Icons.refresh, 'Restart Device'),
                  _buildGridItem(Icons.power, 'Power Saving Mode'),
                  _buildGridItem(Icons.settings, 'Normal Mode'),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildGridItem(IconData icon, String text) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          color: Colors.blue, // Set the color of the icon to blue
        ),
        Text(
          text,
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
