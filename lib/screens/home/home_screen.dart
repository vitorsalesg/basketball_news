import 'package:basketball_app/core/app_colors.dart';
import 'package:basketball_app/core/app_images.dart';
import 'package:flutter/material.dart';

import 'models/basketball_league_model.dart';

class HomeScreen extends StatelessWidget {
  final List<BasketballLeague> leagues = [
    BasketballLeague(nameLeague: 'NBB', imageLeague: AppImages.nbb),
    BasketballLeague(nameLeague: 'LDB', imageLeague: AppImages.ldb),
    BasketballLeague(
      nameLeague: 'Copa Super 8',
      imageLeague: AppImages.leagueSuper8,
    ),
    BasketballLeague(
      nameLeague: 'Liga Ouro',
      imageLeague: AppImages.leagueGold,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text(
          'Ola, ...',
          style: TextStyle(
            fontWeight: FontWeight.w600,
            fontFamily: 'Montserrat',
            fontSize: 22,
          ),
        ),
        toolbarHeight: 150,
        backgroundColor: AppColors.orange,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20, top: 20),
            child: Column(
              children: [
                Text(
                  'Ligas de basquete',
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontFamily: 'Montserrat',
                    fontSize: 16,
                  ),
                ),
                SizedBox(
                  width: 160,
                  child: Divider(
                    color: AppColors.black,
                    thickness: 3,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: GridView.builder(
              gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: 200,
                childAspectRatio: 3 / 2,
                crossAxisSpacing: 20,
                mainAxisSpacing: 20,
              ),
              padding: EdgeInsets.all(20),
              itemCount: leagues.length,
              itemBuilder: (BuildContext ctx, index) {
                return Card(
                  elevation: 3.0,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Image.asset(
                          leagues[index].imageLeague,
                          height: 60,
                          width: 60,
                        ),
                        const SizedBox(height: 10),
                        Text(
                          leagues[index].nameLeague,
                          style: TextStyle(fontWeight: FontWeight.w600),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
