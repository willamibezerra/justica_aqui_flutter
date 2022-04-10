import 'package:flutter/material.dart';
import 'package:stories_for_flutter/stories_for_flutter.dart';

import 'item_storie_widget.dart';

class StoriesWidget extends StatelessWidget {
  const StoriesWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Stories(
            circlePadding: 2,
            storyItemList: [
              StoryItem(
                  name: 'Crime de \nstalking',
                  thumbnail: const NetworkImage(
                      'https://img.freepik.com/free-vector/social-media-stalking-invasion-online-privacy-cyberstalking-following-geotagging-guy-with-binoculars-looking-girls-social-profile-vector-isolated-concept-metaphor-illustration_335657-1283.jpg?t=st=1649608347~exp=1649608947~hmac=a286cc5ce568e0f3b7de15bf001a9e3f67a940d937cc9bafa6234b99ae5fda72&w=740'),
                  stories: [
                    const ItemStorieWidget(
                      url:
                          'https://conteudo.imguol.com.br/c/esporte/a4/2021/11/27/palmeiras-ergue-a-taca-da-copa-libertadores-pela-terceira-vez-apos-bater-o-flamengo-na-final-em-montevideu-1638059087471_v2_3x4.jpg',
                    ).build,
                    const ItemStorieWidget(
                      url:
                          "https://noticiasdatv.uol.com.br/media/_versions/artigos_2021/danilo-palmeiras-deportivo-tachira-cesar-greco_fixed_large.jpg",
                    ).build,
                  ]),
              StoryItem(
                  name: 'Violência \ndoméstica',
                  thumbnail: const NetworkImage(
                      'https://img.freepik.com/free-vector/sad-woman-representing-gender-violence-concept_23-2148581692.jpg?t=st=1649608090~exp=1649608690~hmac=cc7195076312b85cc4c57ae08928010629cee15509e36f07fba1254932632f14&w=740'),
                  stories: [
                    const ItemStorieWidget(
                      url:
                          "https://www.tjdft.jus.br/institucional/imprensa/campanhas-e-produtos/direito-facil/edicao-semanal/da-violencia-domestica-e-familiar-contra-a-mulher/@@images/a14df8fd-e182-4132-8fce-7b4a0900d92e.jpeg",
                    ).build,
                    const ItemStorieWidget(
                      url:
                          "https://noticiasdatv.uol.com.br/media/_versions/artigos_2021/danilo-palmeiras-deportivo-tachira-cesar-greco_fixed_large.jpg",
                    ).build,
                    const ItemStorieWidget(
                      url:
                          "https://noticiasdatv.uol.com.br/media/_versions/artigos_2021/danilo-palmeiras-deportivo-tachira-cesar-greco_fixed_large.jpg",
                    ).build,
                  ]),
              StoryItem(
                  name: 'Adoção',
                  thumbnail: const NetworkImage(
                      'https://img.freepik.com/free-vector/same-sex-family-flat-color-faceless-characters-generation-z-couple-lgbtq-rights-young-lesbian-women-with-child-isolated-cartoon-illustration-web-graphic-design-animation_151150-2912.jpg?w=740'),
                  stories: [
                    const ItemStorieWidget(
                      url:
                          "https://noticiasdatv.uol.com.br/media/_versions/artigos_2021/danilo-palmeiras-deportivo-tachira-cesar-greco_fixed_large.jpg",
                    ).build,
                    const ItemStorieWidget(
                      url:
                          "https://noticiasdatv.uol.com.br/media/_versions/artigos_2021/danilo-palmeiras-deportivo-tachira-cesar-greco_fixed_large.jpg",
                    ).build,
                    const ItemStorieWidget(
                      url:
                          "https://noticiasdatv.uol.com.br/media/_versions/artigos_2021/danilo-palmeiras-deportivo-tachira-cesar-greco_fixed_large.jpg",
                    ).build,
                  ]),
              StoryItem(
                  name: 'Divórcio',
                  thumbnail: const NetworkImage(
                      'https://img.freepik.com/free-vector/conflict-couple_74855-7060.jpg?t=st=1649608203~exp=1649608803~hmac=adf6a7a3676f4ee1d71dd39e132fef35b37cb7696e8f17a65b71267224aae195&w=826'),
                  stories: [
                    const ItemStorieWidget(
                      url:
                          "https://noticiasdatv.uol.com.br/media/_versions/artigos_2021/danilo-palmeiras-deportivo-tachira-cesar-greco_fixed_large.jpg",
                    ).build,
                    const ItemStorieWidget(
                      url:
                          "https://noticiasdatv.uol.com.br/media/_versions/artigos_2021/danilo-palmeiras-deportivo-tachira-cesar-greco_fixed_large.jpg",
                    ).build,
                    const ItemStorieWidget(
                      url:
                          "https://noticiasdatv.uol.com.br/media/_versions/artigos_2021/danilo-palmeiras-deportivo-tachira-cesar-greco_fixed_large.jpg",
                    ).build,
                  ]),
              StoryItem(
                  name: 'União estável',
                  thumbnail: const NetworkImage(
                      'https://comprandomeuape.com.br/wp-content/uploads/2015/01/uniao-estavel-casamento-juntas-escovas-dente-cma.jpg'),
                  stories: [
                    const ItemStorieWidget(
                      url:
                          'https://comprandomeuape.com.br/wp-content/uploads/2015/01/uniao-estavel-casamento-juntas-escovas-dente-cma.jpg',
                    ).build,
                    const ItemStorieWidget(
                      url:
                          "https://noticiasdatv.uol.com.br/media/_versions/artigos_2021/danilo-palmeiras-deportivo-tachira-cesar-greco_fixed_large.jpg",
                    ).build,
                  ]),
              StoryItem(
                  name: 'Calúnia',
                  thumbnail: const NetworkImage(
                      'https://trilhante.com.br/storage/img/ico/0271-yyqm.png'),
                  stories: [
                    const ItemStorieWidget(
                      url:
                          'https://comprandomeuape.com.br/wp-content/uploads/2015/01/uniao-estavel-casamento-juntas-escovas-dente-cma.jpg',
                    ).build,
                    const ItemStorieWidget(
                      url:
                          "https://noticiasdatv.uol.com.br/media/_versions/artigos_2021/danilo-palmeiras-deportivo-tachira-cesar-greco_fixed_large.jpg",
                    ).build,
                  ]),
            ],
          ),
        ),
        const Divider()
      ],
    );
  }
}
