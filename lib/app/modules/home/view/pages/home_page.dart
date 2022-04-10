import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:jus_ma/app/modules/home/view/components/card_buttom.dart';
import 'package:jus_ma/app/modules/home/view/components/in_app_webb_wiew.dart';
import 'package:jus_ma/app/modules/home/view/widgets/stories_widget.dart';
import 'package:url_launcher/url_launcher.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool get isBig {
    return MediaQuery.of(context).size.width > 600;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: SizedBox(
          width: 195,
          height: 50,
          child: ElevatedButton(
            onPressed: () {
              launch('https://api.whatsapp.com/send?phone=5599991391591');
            },
            child: const Text('Precisa de Ajuda?'),
            style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              primary: const Color(0xff8471E3),
            ),
          ),
        ),
        appBar: AppBar(
          title: const Text("Justiça Aqui"),
          centerTitle: isBig,
          backgroundColor: const Color(0xff8471E3),
        ),
        body: SafeArea(
          child: Center(
            child: SizedBox(
              width: isBig ? 600 : double.maxFinite,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  if (!isBig) const StoriesWidget(),
                  const SizedBox(
                    height: 10,
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: TextField(
                      decoration: InputDecoration(
                          hintText: 'pesquisar',
                          filled: true,
                          fillColor: Color(0xffE8E8F0),
                          border: OutlineInputBorder()),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: GridView.count(
                        mainAxisSpacing: 20,
                        crossAxisSpacing: 20,
                        crossAxisCount: isBig ? 3 : 2,
                        children: [
                          CardButtom(
                            icon: const Icon(Icons.woman),
                            title: 'Violência doméstica',
                            onTap: () {
                              if (kIsWeb) {
                                launch(
                                    'https://delegaciaonline.policiacivil.ma.gov.br/');
                              } else {
                                Navigator.of(context).pushNamed('/webbview',
                                    arguments: const WebbArgs(
                                        title: 'Violência domestica',
                                        url:
                                            'https://delegaciaonline.policiacivil.ma.gov.br/'));
                              }
                            },
                          ),
                          CardButtom(
                            icon: const Icon(Icons.family_restroom),
                            title: 'Adoção passo a passo',
                            onTap: () {
                              if (kIsWeb) {
                                launch(
                                    'https://adocaopassoapasso.com.br/passo-a-passo/guia-adocao-passo-passo/');
                              } else {
                                Navigator.of(context).pushNamed('/webbview',
                                    arguments: const WebbArgs(
                                        title: 'Adoção passo a passo',
                                        url:
                                            'https://adocaopassoapasso.com.br/passo-a-passo/guia-adocao-passo-passo/'));
                              }
                            },
                          ),
                          CardButtom(
                              icon: const Icon(Icons.balance),
                              title: 'consulta jurídica',
                              onTap: () {
                                if (kIsWeb) {
                                  launch(
                                      'https://jurisconsult.tjma.jus.br/#/home');
                                } else {
                                  Navigator.of(context).pushNamed('/webbview',
                                      arguments: const WebbArgs(
                                          title: 'consulta jurídica',
                                          url:
                                              'https://jurisconsult.tjma.jus.br/#/home'));
                                }
                              }),
                          CardButtom(
                            icon: const Icon(Icons.person),
                            title: 'Cartório',
                            onTap: () {
                              if (kIsWeb) {
                                launch('https://www.cartoriosmaranhao.com.br/');
                              } else {
                                Navigator.of(context).pushNamed(
                                  '/webbview',
                                  arguments: const WebbArgs(
                                      title: 'Cartório',
                                      url:
                                          'https://www.cartoriosmaranhao.com.br/'),
                                );
                              }
                            },
                          ),
                          CardButtom(
                            icon: const Icon(Icons.info),
                            title: 'consulte seus direitos',
                            onTap: () {
                              if (kIsWeb) {
                                launch(
                                    'http://www.tjma.jus.br/balcao-virtual/tj?esfera=1&_token=NUSFNTwEs15n8CNjmMO4lHn4Ifox6XmAGI0X5BMz&comarca=56');
                              } else {
                                Navigator.of(context).pushNamed(
                                  '/webbview',
                                  arguments: const WebbArgs(
                                      title: 'consulte seus direitos',
                                      url:
                                          'http://www.tjma.jus.br/balcao-virtual/tj?esfera=1&_token=NUSFNTwEs15n8CNjmMO4lHn4Ifox6XmAGI0X5BMz&comarca=56'),
                                );
                              }
                            },
                          ),
                          CardButtom(
                            icon: const Icon(Icons.safety_divider),
                            title: 'Medidas Protetivas',
                            onTap: () {
                              if (kIsWeb) {
                                launch(
                                    'https://medidasprotetivas.tjma.jus.br/home');
                              } else {
                                Navigator.of(context).pushNamed(
                                  '/webbview',
                                  arguments: const WebbArgs(
                                      title: 'Medidas Protetivas',
                                      url:
                                          'https://medidasprotetivas.tjma.jus.br/home'),
                                );
                              }
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
        ));
  }
}
