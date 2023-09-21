import 'package:flutter/material.dart';

void main ( ) {
  runApp(myApp()) ;
}

class myApp extends StatelessWidget {
  const myApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "SmartApp",
      debugShowCheckedModeBanner: true,
      home: Homescreen( ),
    );
  }
}

class Homescreen extends StatelessWidget {
  const Homescreen ({super.key});

  //get floatingActionButton => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.business),
        backgroundColor: Colors.black,
        title: Text("Home"),
        centerTitle: true,
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.search) ) ,
          SizedBox(width: 10,) ,
          IconButton(onPressed: (){}, icon: Icon(Icons.settings)),
        ],
        toolbarHeight: 100,
      ),

      body: Column(
        children: [
          Expanded(
            child: gridview(),
          ),
          ListView.builder(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemCount: 3,
            itemBuilder: (context, index) {
              return ListTile(
                leading: Image.network('https://w0.peakpx.com/wallpaper/941/603/HD-wallpaper-the-king-cr7-football-juventus-player-potugese-ronaldo-soccer-tiger-thumbnail.jpg'),
                title: Text('Cristiano Roanldo'),
                subtitle: Text('The King, The Myth, The Legend'),
              );
            },
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Photos Uploaded Successfully!')));
        },
        child: Icon(Icons.upload_outlined),
      ),
    );
  }
}

class gridview extends StatefulWidget {
  const gridview({super.key});

  @override
  State<gridview> createState() => _gridViewState();
}

class _gridViewState extends State<gridview> {

  final List<String> imageurls = [
    'https://c4.wallpaperflare.com/wallpaper/1019/822/355/cristiano-ronaldo-black-and-white-wallpaper-preview.jpg',
    'https://c4.wallpaperflare.com/wallpaper/668/353/217/cristiano-ronaldo-5k-wallpaper-preview.jpg',
    'https://c4.wallpaperflare.com/wallpaper/891/194/510/cristiano-ronaldo-real-madrid-fifa-18-ball-wallpaper-preview.jpg',
    'https://c4.wallpaperflare.com/wallpaper/747/472/920/football-star-cristiano-ronaldo-celebrity-wallpaper-preview.jpg',
    'https://c4.wallpaperflare.com/wallpaper/914/646/426/cristiano-madrid-portugal-real-wallpaper-preview.jpg',
    'https://c4.wallpaperflare.com/wallpaper/275/519/739/cristiano-ronaldo-real-madrid-filter-soccer-wallpaper-thumb.jpg',
    'https://images8.alphacoders.com/476/476725.jpg',
    'https://c4.wallpaperflare.com/wallpaper/139/444/1000/cristiano-ronaldo-wallpaper-preview.jpg',
    'https://c4.wallpaperflare.com/wallpaper/935/871/816/manchester-united-christ-ronolado-wallpaper-preview.jpg'
  ] ;

  final List<String> imageDescriptions = [
    "Phto 1",
    'Photo 2',
    'Photo 3',
    'Photo 4',
    'Photo 5',
    'Photo 6',
    'Photo 7',
    'Photo 8',
    'Photo 9',
  ];
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3 ,
          mainAxisSpacing: 10 ,
          crossAxisSpacing: 10
        ),
        itemCount: imageurls.length,
        itemBuilder: (context , index) {
          return Card(
            child: Column(
              children: [
                Image.network(imageurls[index]),
                Text(imageDescriptions[index]),
              ],
            ),
          );
        }
    );
  }
}


