import 'package:flutter/material.dart';
import 'package:southsea_cinema/constants.dart';
import 'package:southsea_cinema/widgets/nav_drawer.dart';

class MovieListing extends StatelessWidget {
  const MovieListing({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(appTitle, style: cinemaHeaderStyle),
        backgroundColor: cinemaSurface,
        iconTheme: const IconThemeData(color: cinemaBrand),
        elevation: 0,
      ),
      drawer: const NavDrawer(),
      body: Container(
        color: cinemaSurface,
        child:  const Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
          
          Text('Rush Hour  (1998) (15)  '),

          Text('Two people rush to save the president\'s daughter from a gang of criminals.'),

          Text('Southsea Cinema room'),

          Text('Thursday 22nd Oct 2026 18:00-1938'),

          //SizedBox(height: 20),
          Text('Selct Quantities (Up to 5 in total)'),

          Row(
            children: [
              DropdownMenu<int>(
                initialSelection: 0,

                dropdownMenuEntries: [
                  DropdownMenuEntry(value: 1, label: '1'),
                  DropdownMenuEntry(value: 2, label: '2'),
                  DropdownMenuEntry(value: 3, label: '3'),
                  DropdownMenuEntry(value: 4, label: '4'),
                  DropdownMenuEntry(value: 5, label: '5'),
                ],
              ),
                
                
              Text('Adults(£7.50)'),
            ],
          ),
        ]),
             

      )
    );
  }
}
