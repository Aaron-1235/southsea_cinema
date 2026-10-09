import 'package:flutter/material.dart';
import 'package:southsea_cinema/constants.dart';
import 'package:southsea_cinema/widgets/nav_drawer.dart';

class MovieListing extends StatefulWidget {
  const MovieListing({super.key});

  @override
  State<MovieListing> createState() => _MovieListingState();

}

class _MovieListingState extends State<MovieListing> {
  int _quantity = 0;

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
          color: cinemaBackground,
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Rush Hour (1998) (15)  ',
                  style: TextStyle(
                    color: cinemaFontWhite,
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  )
                  ),


                SizedBox(height: 20),
                const Text(
                    'Two people rush to save the president\'s daughter from a gang of criminals.',
                    style: TextStyle(
                      color: cinemaFontWhite,
                      fontSize: 14,
                    ),
                    ),

                SizedBox(height: 20),
                const Text(
                  'Southsea Cinema Room',
                  style: TextStyle(
                    color: cinemaFontWhite,
                    fontSize: 14,
                  ),
                  ),

                const Text(
                  'Thursday 22nd Oct 2026 18:00 - 19:38',
                  style: TextStyle(
                    color: cinemaFontWhite,
                    fontSize: 14,
                  ),
                  ),

                SizedBox(height: 20),
                const Text(
                  'Select Quantities (Up to 5 in total)',
                  style: TextStyle(
                    color: cinemaFontWhite,
                    fontSize: 14,
                  ),
                  ),

                SizedBox(height: 20),
                const Text(
                  'Tickets',
                  style: TextStyle(
                    color: cinemaFontWhite,
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 20,),
                Text(
                  '$_quantity amount of ticets'
                ),

                LayoutBuilder(
                  builder: (context, constraints) {
                    if (constraints.maxWidth > 600) {
                      return Row(
                        children: [
                          DropdownMenu<int>(
                            initialSelection: 0,
                            onSelected: (value) {
                              setState(() {
                                _quantity = value ?? 0;
                              });
                            },
                          dropdownMenuEntries: [
                            DropdownMenuEntry(value: 0, label: '0'),
                            DropdownMenuEntry(value: 1, label: '1'),
                            DropdownMenuEntry(value: 2, label: '2'),
                            DropdownMenuEntry(value: 3, label: '3'),
                            DropdownMenuEntry(value: 4, label: '4'),
                            DropdownMenuEntry(value: 5, label: '5'),
                          ],
                          ),
                          const Text('Adults(£7.50)'),
                          ElevatedButton(
                            onPressed: () => print('The number of tickets selected is $_quantity'), 
                            child: const Text('Add to order'),
                          )
                        ],
                        );
                    } else {
                      return Column(
                        children: [
                          DropdownMenu<int>(
                            initialSelection: 0,
                            onSelected: (value) {
                              setState(() {
                                _quantity = value ?? 0;
                              });
                            },
                          dropdownMenuEntries: [
                            DropdownMenuEntry(value: 0, label: '0'),
                            DropdownMenuEntry(value: 1, label: '1'),
                            DropdownMenuEntry(value: 2, label: '2'),
                            DropdownMenuEntry(value: 3, label: '3'),
                            DropdownMenuEntry(value: 4, label: '4'),
                            DropdownMenuEntry(value: 5, label: '5'),
                          ],
                          ),
                          const Text('Adults(£7.50)'),
                          ElevatedButton(
                            onPressed: () => print('The number of tickets selected is $_quantity'), 
                            child: const Text('Add to order'),
                          )
                        ],
                      );
                    }
                  },)
              ]),
        ));
  }
}
