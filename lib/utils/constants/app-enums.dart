enum AppImagesEnums {
  begoryLogo("assets/images/begoryLogo.png"),
  shamamsaLogo("assets/images/shamamsaLogo.png"),
  onbarding1("assets/images/onbarding1.png"),
  onbarding2("assets/images/onbarding2.png"),
  onbarding3("assets/images/onbarding3.png"),
  homeHero("assets/images/homeImage.png"),
  ;

  final String img;
  const AppImagesEnums(this.img);
}

enum AppStrings {
  txtScreenOnboarding1Begin("تطبيق مناهج\n مدرسه الشمامسه ومدرسة بي جورى"),
  txtScreenOnboarding1Last("كنيسة الشهيد العظيم مارجرجس ببلوط"),
  txtScreenOnboarding2Begin(
      "جمعنالك مناهج وفيديوهات مدرسة الشمامسة \n ومدرسة بي جورى"),
  txtScreenOnboarding2Last("يلا بينا نتعلم  ونلعب"),
  txtScreenOnboarding3BeginA("تطبيق ترفيهى - تعليمى"),
  txtScreenOnboarding3BeginB("مخصوص عشانك"),
  txtScreenOnboarding3Last("احنا سامعينك عشان رأيك مهم"),
  homeScreenCopticText(";na]enak ma`tcaboi"),
  homeScreenArabicText("أسالك فتعلمنى"),
  homeScreenLabelDailyVerse("اية اليوم"),
  homeScreenExDailyVerse("هَا أَنَا آتِي سَرِيعًا. تَمَسَّكْ بِمَا عِنْدَكَ لِئَلاَّ يَأْخُذَ أَحَدٌ إِكْلِيلَكَ. (رؤ 3: 11)"),
  ;

  final String text;
  const AppStrings(this.text);
}
