class OnBoardingModel {
  final String image;
  final String title;
  final String body;

  OnBoardingModel({
    required this.image,
    required this.title,
    required this.body,
  });
}

List<OnBoardingModel> pages = [
  OnBoardingModel(
    image: 'assets/images/on1.svg',
    title: 'ابحث عن دكتور متخصص',
    body: 'اكتشف محموعه واسعه من الاطباءالخبراء والمتخصصين في مختلف المجالات',
  ),
  OnBoardingModel(
    image: 'assets/images/on3.svg',
    title: 'سهولة الحجز',
    body: 'احجز المواعيد يضغطة زرار في اي وقت واي مكان',
  ),
  OnBoardingModel(
    image: 'assets/images/on2.svg',
    title: 'امن و سري',
    body: 'كن مطمئنا لان خصوصيتك وامانك هما اهم اولوياتنا ',
  ),
];
