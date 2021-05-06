part of 'widgets.dart';

class SushiCard extends StatelessWidget {
  final Sushi sushiCard;
  SushiCard(this.sushiCard);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: Container(
        height: 250,
        width: 170,
        color: Colors.white,
        child: Column(
          children: [
            Image.asset(
              sushiCard.imageUrl,
              width: 170,
              height: 140,
              fit: BoxFit.contain,
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              sushiCard.name,
              style: darkTextStyle.copyWith(
                  fontSize: 22, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 3,
            ),
            Text(
              sushiCard.ingredients,
              style: greyTextStyle,
            ),
            SizedBox(
              height: 8,
            ),
            Padding(
              padding: EdgeInsets.only(left: 10, right: 10),
              child: Row(
                children: [
                  Text(
                    sushiCard.price,
                    style: darkTextStyle.copyWith(fontSize: 25),
                  ),
                  Spacer(),
                  Container(
                    width: 80,
                    height: 30,
                    child: RaisedButton(
                      onPressed: () {},
                      color: Color(0xff12233A),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Text(
                        'Order',
                        style: whiteTextStyle.copyWith(
                            fontSize: 15, fontWeight: FontWeight.bold),
                      ),
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
