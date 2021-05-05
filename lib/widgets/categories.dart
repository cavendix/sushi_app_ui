part of 'widgets.dart';

class Categories extends StatelessWidget {
  final Category category;
  Categories(this.category);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 75,
      height: 75,
      child: Column(
        children: [
          Image.asset(
            category.imageUrl,
            width: 50,
            fit: BoxFit.cover,
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            category.name,
            style: darkTextStyle.copyWith(fontSize: 15),
          ),
        ],
      ),
    );
  }
}
