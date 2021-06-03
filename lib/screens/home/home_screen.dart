import 'package:basketball_app/core/app_colors.dart';
import 'package:basketball_app/core/app_images.dart';
import 'package:basketball_app/screens/home/models/basketball_league_model.dart';
import 'package:basketball_app/screens/home/news_league_screen.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  final List<BasketballLeague> leagues = [
    BasketballLeague(
      idLeague: 1,
      nameLeague: 'NBB',
      imageLeague: AppImages.nbb,
    ),
    BasketballLeague(
      idLeague: 2,
      nameLeague: 'LDB',
      imageLeague: AppImages.ldb,
    ),
    BasketballLeague(
      idLeague: 3,
      nameLeague: 'Copa Super 8',
      imageLeague: AppImages.leagueSuper8,
    ),
    BasketballLeague(
      idLeague: 4,
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
          'Olá, Vitor',
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
            padding: const EdgeInsets.only(top: 20.0, left: 23.0),
            child: Text(
              'Ligas de basquete',
              style: TextStyle(
                fontWeight: FontWeight.w600,
                fontFamily: 'Montserrat',
                fontSize: 16,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 23.0),
            child: SizedBox(
              width: 160,
              child: Divider(
                color: AppColors.black,
                thickness: 3,
              ),
            ),
          ),
          Expanded(
            child: GridView.builder(
              padding: EdgeInsets.all(20),
              scrollDirection: Axis.vertical,
              gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: 200,
                childAspectRatio: 3 / 2,
                crossAxisSpacing: 20,
                mainAxisSpacing: 20,
              ),
              itemCount: leagues.length,
              itemBuilder: (ctx, index) {
                BasketballLeague item = leagues[index];
                return cardWidget(
                  context,
                  item.idLeague,
                  item.imageLeague,
                  item.nameLeague,
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget cardWidget(
    BuildContext context,
    int idLeague,
    String image,
    String title,
  ) {
    return GestureDetector(
      onTap: () => Navigator.push(
        context,
        MaterialPageRoute(
          builder: (ctx) => NewsLeagueScreen(
            idLeague: idLeague,
            nameLeague: title,
          ),
        ),
      ),
      child: Card(
        elevation: 3.0,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Image.asset(
                image,
                height: 50,
                width: 50,
              ),
              const SizedBox(height: 10),
              Text(
                title,
                style: TextStyle(fontWeight: FontWeight.w600),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
