import 'package:flutter/material.dart';

void main() {
  runApp(const MonApplication());
}

class MonApplication extends StatelessWidget {
  const MonApplication({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Fsegs',
      debugShowCheckedModeBanner: false,
      home: pageAccueil(),
    );
  }
}

class pageAccueil extends StatelessWidget {
  const pageAccueil({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text('Faculté FSEGS'),
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(Icons.menu),
          onPressed: () {},
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {},
          ),
        ],
      ),
      body:
          //const SingleChildScrollView(
          //child:
          const Column(children: [
        Image(
          image: AssetImage('assets/images/logo_fseg_sfax.jpg'),
        ),
        SectionTitre(),
        SectionTexte(),
        SectionIcone(),
        SectionService(),
      ]),

      //floatingActionButton: FloatingActionButton(
      //  onPressed: () {
      //  debugPrint('tu as cliqué dessus');
      //  },
      //  backgroundColor: Colors.pink,
      // child: Text('click'),
    );
  }
}

class SectionTitre extends StatelessWidget {
  const SectionTitre({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(20),
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Bienvenue à la FSEGS',
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.w800),
          ),
          Text(
            "La Faculté des Sciences Economiques et de Gestion de Sfax",
            style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
          ),
        ],
      ),
    );
  }
}

class SectionTexte extends StatelessWidget {
  const SectionTexte({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: const Text(
          "FSEG est un faculté rattachée à l'université de Sfax. Elle a été créée par le décret du 14 novembre 1975. Elle comporte aujourd'hui plus que 3800 étudiants et 300 enseignants."),
    );
  }
}

class SectionIcone extends StatelessWidget {
  const SectionIcone({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(bottom: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            padding: const EdgeInsets.all(20),
            child: Column(
              children: [
                const Icon(Icons.phone, color: Colors.blue),
                const SizedBox(height: 5),
                Text(
                  'Tel'.toUpperCase(),
                  style: const TextStyle(color: Colors.blue),
                )
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.all(20),
            child: Column(
              children: [
                const Icon(Icons.mail, color: Colors.blue),
                const SizedBox(height: 5),
                Text(
                  'Mail'.toUpperCase(),
                  style: const TextStyle(color: Colors.blue),
                )
              ],
            ),
          ),
          /*Container(
            padding: const EdgeInsets.all(20),
            child: Column(
              children: [
                const Icon(Icons.share, color: Colors.blue),
                const SizedBox(height: 5),
                Text(
                  'Partage'.toUpperCase(),
                  style: const TextStyle(color: Colors.blue),
                )
              ],
            ),
          ),*/
        ],
      ),
    );
  }
}

class SectionService extends StatelessWidget {
  const SectionService({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: Image(
              image: AssetImage('assets/images/livres.jpg'),
            ),
          ),
          ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: Image(
              image: AssetImage('assets/images/info.jpg'),
            ),
          ),
        ],
      ),
    );
  }
}
