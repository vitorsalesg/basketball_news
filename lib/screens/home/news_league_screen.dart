import 'package:flutter/material.dart';
import 'package:basketball_app/core/app_colors.dart';

class NewsLeagueScreen extends StatelessWidget {
  final int idLeague;
  final String nameLeague;

  const NewsLeagueScreen({
    Key? key,
    required this.idLeague,
    required this.nameLeague,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        children: <Widget>[
          slideTileWidget(
            nameLeague,
            'https://colunadofla.com/wp-content/uploads/2020/11/rafael-hettsheimeir-flamengo.png',
            'Após temporada histórica pelo Flamengo, Rafael Hettsheimeir acerta retorno ao Bauru',
            'Heptacampeão do NBB (Novo Basquete Brasil) com o Flamengoneste ano, Rafael Hettsheimeir está próximo de deixar o Mais Querido. De acordo com o portal “Esporte Clube Basquete”, o pivô acertou sua volta ao Bauru para a próxima temporada.'
                '\n \n Esta será a terceira passagem de Hettsheimeir pelo Bauru. Ao todo, ele atuou por quatro temporadas no clube paulista, onde conquistou o título do NBB de 2016/2017. Agora, após passagens por Franca e Flamengo, o pivô volta para o time no qual se projetou para o basquete nacional. Vale lembrar que Hett jogou por oito anos na Espanha antes de se destacar no Brasil.',
          ),
          slideTileWidget(
            nameLeague,
            'https://sportbuzz.uol.com.br/media/_versions/nbb_fla_x_spfc_widelg.png',
            'Flamengo e São Paulo protagonizam final inédita do NBB',
            'Flamengo e São Paulo vão disputar as finais do NBB 2020/21. Essa será a primeira decisão entre as equipes na história do principal campeonato do basquete brasileiro. O rubro-negro busca seu sétimo título no torneio, enquanto o “novato” tricolor tenta a conquista inédita. '
                '\n \n Apesar de se enfrentarem pela primeira vez numa final do NBB, os times mediram forças em outras decisões nesta temporada. A primeira foi na Copa Super 8, em que o Flamengo venceu o São Paulo por 79 a 71 e foi campeão do torneio. Fonte: sportbuzz',
          ),
          slideTileWidget(
            nameLeague,
            'https://s2.glbimg.com/gDGq12NBTuxutiPnAbd1IiC2jz4=/0x0:979x978/984x0/smart/filters:strip_icc()/i.s3.glbimg.com/v1/AUTH_bc8228b6673f488aa253bbcb03c80ec5/internal_photos/bs/2021/l/E/gRpBQyRnuIeKJ3wdK7Dw/georginho.jpg',
            'Georginho e Lucas Mariano não renovam com São Paulo e devem defender o Franca',
            'Dois dos principais jogadores do basquete do São Paulo, Georginho e Lucas Mariano não aceitaram a proposta de renovação do clube e devem reforçar o Franca para a próxima temporada do Novo Basquete Brasil. O Tricolor Paulista, atual vice-campeão do NBB, se esforçava durante os últimos dias para manter os atletas no elenco, mas por vontade deles a extensão do vínculo não aconteceu.'
                '\n \n Georginho e Lucas Mariano foram fundamentais para o São Paulo chegar à primeira final do NBB de sua história. Na decisão, porém, o time foi varrido pelo Flamengo, que levantou a taça pela sétima vez. Fonte: Globo Esporte',
          ),
        ],
      ),
    );
  }

  Widget slideTileWidget(
    String league,
    String image,
    String title,
    String description,
  ) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      color: AppColors.white,
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SafeArea(
              child: Container(
                width: double.infinity,
                height: 250,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(image),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 10),
            Card(
              margin: EdgeInsets.all(20),
              color: Colors.orange,
              child: Padding(
                padding: const EdgeInsets.all(5.0),
                child: Text(
                  league,
                  style: TextStyle(color: AppColors.white),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20, bottom: 40),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 18,
                    ),
                  ),
                  Divider(thickness: 2),
                  Text(
                    description,
                    style: TextStyle(height: 1.5, fontSize: 16),
                    textAlign: TextAlign.justify,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
