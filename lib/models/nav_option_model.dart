class NavOptionModel {
  final int id;
  final String title;
  final String icon;
  final String screen;

  NavOptionModel({
    required this.id,
    required this.title,
    required this.icon,
    required this.screen,
  });
}

List<NavOptionModel> navOptions = [
  NavOptionModel(
    id: 141,
    title: 'Get a ride',
    icon: 'assets/images/UberX.png',
    screen: 'mapScreen',
  ),
  NavOptionModel(
    id: 447,
    title: 'Order food',
    icon: 'assets/images/food.png',
    screen: 'EatScreen',
  ),
];
