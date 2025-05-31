import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:firebase_database/firebase_database.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        Expanded(
          flex: 1,
          child: Stack(children: []),
        ),
        Expanded(
          flex: 3,
          child: Container(
            width: double.infinity,
            margin: EdgeInsets.all(1),
            color: Colors.white,
            child: Stack(
              children: [
                Text("G0 CHECK THIS PLANT"),
                Positioned(
                  bottom: 0,
                  child: Container(
                    alignment: Alignment.bottomCenter,
                    height: 50,
                    width: 300,
                    decoration: BoxDecoration(
                      color: Color(0xFF01D150),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        IconButton(
                          icon: Icon(
                            FontAwesomeIcons.leaf,
                            color: Colors.white,
                          ),
                          iconSize: 30,
                          onPressed: () {
                            //ketika ditekan
                          },
                        ),
                        ElevatedButton(
                          onPressed: () {
                            showDialog(
                              context: context,
                              builder: (BuildContext Context) {
                                return DeviceDialog();
                              },
                            );
                          },
                          style: ElevatedButton.styleFrom(
                            shape: CircleBorder(
                                side: BorderSide(
                              color: Colors.white,
                              width: 2.0,
                            )),
                            padding: EdgeInsets.all(10),
                            backgroundColor: Color(0xFF01D150),
                          ),
                          child: Icon(
                            Icons.add,
                            color: Colors.white,
                            size: 30,
                          ),
                        ),
                        IconButton(
                          icon: Icon(
                            Icons.settings,
                            color: Colors.white,
                          ),
                          iconSize: 30,
                          onPressed: () {
                            //ketika ditekan
                          },
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    ));
  }
}

class DeviceDialog extends StatefulWidget {
  @override
  _DeviceDialogState createState() => _DeviceDialogState();
}

class _DeviceDialogState extends State<DeviceDialog> {
  TextEditingController _deviceNameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text('Masukkan Nama Device'),
      content: TextField(
        controller: _deviceNameController,
        decoration: InputDecoration(hintText: 'Nama Device'),
      ),
      actions: [
        ElevatedButton(
          onPressed: () {
            String deviceName = _deviceNameController.text.trim();
            if (deviceName.isNotEmpty) {
              Navigator.of(context).pop(); // Tutup dialog
            }
          },
          child: Text('Tambah'),
        ),
      ],
    );
  }
}
