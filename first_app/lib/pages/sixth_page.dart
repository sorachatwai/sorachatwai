import 'package:first_app/components/name_card.dart';
import 'package:flutter/material.dart';
 
class SixthPage extends StatefulWidget {
  @override
  State<SixthPage> createState() => _SixthPageState();
}
 
class _SixthPageState extends State<SixthPage> {
 
  final List<dynamic> nameList = [
    ['Gol D Roger', 'xx/xx/xxxx', 'https://mentor2code.com/assets/img/logo-small.png'],
    ['garp', 'xx/xx/xxxx', 'https://mentor2code.com/assets/img/logo-small.png'],
    ['teach', 'xx/xx/xxxx', 'https://mentor2code.com/assets/img/logo-small.png'],
    ['shanks', 'xx/xx/xxxx', 'https://mentor2code.com/assets/img/logo-small.png'],
    ['one piece', 'xx/xx/xxxx', 'https://mentor2code.com/assets/img/logo-small.png'],
  ];
 
  String _chooseCard ='';
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text('Sixth Page'),
      ),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () async {
                String result = await Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => CardListPage(
                      nameList: nameList,
                    ),
                  )
                );
                setState(() {
                  _chooseCard = result;
                });
              },
              child: Text('Select card: $_chooseCard'))
          ],
        )
      ),
    );
  }
}
 
class CardListPage extends StatelessWidget{
  const CardListPage({
    super.key,
    required this.nameList,
  });
 
  final List<dynamic> nameList;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text('Sixth Page'),
      ),
      body: ListView.builder(
        itemBuilder: (context, index){
          return NameCard(
            data: NameCardData(
              name: nameList[index][0],
              dob: nameList[index][1],
              imageUrl: nameList[index][2],
              ),
              );
        },
        padding: EdgeInsets.all(8.0),
        itemCount: nameList.length,
      ),
    );
  }
}
 