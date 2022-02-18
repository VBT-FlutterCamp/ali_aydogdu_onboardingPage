class OnBoardModel {
  String title;
  String description;
  String image;
  OnBoardModel(
      {required this.description, required this.title, required this.image});
}

List<OnBoardModel> models = [
  OnBoardModel(
      image: "assets/image/c1.png",
      description:
          "Covid-19 affects different people in different ways.Most infected peoplewill develop mild to modarate illness.",
      title: "Symptoms of Covid-19"),
  OnBoardModel(
      image: "assets/image/c2.png",
      description:
          "Most people who fall sick with Covid-19 experience will mild to modarate symptoms.",
      title: "Covid-19 Information"),
  OnBoardModel(
      image: "assets/image/c3.png",
      description:
          "Stay at home to self quarantin1 ourself from covid-19,hopefully everything gonna be fine soon.",
      title: "Just Stay at Home")
];
