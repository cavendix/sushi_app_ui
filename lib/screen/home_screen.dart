part of 'screen.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffEAEEF6),
      body: SafeArea(
        bottom: false,
        child: ListView(
          children: [
            Padding(
              padding: EdgeInsets.only(
                top: 24,
                left: 24,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    // margin: EdgeInsets.only(left: 10),
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(
                          'assets/icon_menu.png',
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Hi, Felicia!',
                    style: darkTextStyle.copyWith(
                        fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'What is your\nfavorite sushi?',
                    style: darkTextStyle.copyWith(
                        fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    width: 300,
                    height: 50,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                          color: darkColor.withOpacity(0.10),
                          spreadRadius: 3,
                          blurRadius: 5,
                          offset: Offset(0, 5), // changes position of shadow
                        ),
                      ],
                    ),
                    child: Padding(
                      padding: EdgeInsets.only(top: 3.5),
                      child: TextField(
                        decoration: InputDecoration(
                          prefixIcon: Icon(Icons.search, color: darkColor),
                          border: InputBorder.none,
                          hintText: 'Search your sushi',
                          hintStyle: TextStyle(
                            fontSize: 15,
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    child: Padding(
                      padding: EdgeInsets.only(right: 24),
                      child: Row(
                        children: [
                          Text(
                            'Categories',
                            style: darkTextStyle.copyWith(
                                fontSize: 30, fontWeight: FontWeight.bold),
                          ),
                          Spacer(),
                          Text('See all', style: darkTextStyle),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  Container(
                    height: 100,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        Categories(
                          Category(
                              id: 1,
                              name: 'Salmon',
                              imageUrl: 'assets/icon_salmon.png'),
                        ),
                        Categories(
                          Category(
                              id: 2,
                              name: 'Caviar',
                              imageUrl: 'assets/icon_caviar.png'),
                        ),
                        Categories(
                          Category(
                              id: 3,
                              name: 'Rice',
                              imageUrl: 'assets/icon_rice.png'),
                        ),
                        Categories(
                          Category(
                              id: 4,
                              name: 'Octopus',
                              imageUrl: 'assets/icon_octo.png'),
                        ),
                        Categories(
                          Category(
                              id: 5,
                              name: 'Shrimp',
                              imageUrl: 'assets/icon_shrimp.png'),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
