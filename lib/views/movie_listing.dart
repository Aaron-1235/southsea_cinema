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
          color: cinemaSurface,
          child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const Text('Rush Hour  (1998) (15)  '),

                const Text(
                    'Two people rush to save the president\'s daughter from a gang of criminals.'),

                const Text('Southsea Cinema room'),

                const Text('Thursday 22nd Oct 2026 18:00-1938'),

                //SizedBox(height: 20),
                const Text('Selct Quantities (Up to 5 in total)'),

                Row(
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

                  ],
                ),
              ]),
        ));
  }
}
