import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:NicarAdmin/screens/landing_page/pages/about_us.dart';
import 'package:NicarAdmin/screens/landing_page/pages/auth_wrapper.dart';
import 'package:NicarAdmin/screens/landing_page/pages/page_one.dart';
import 'package:NicarAdmin/screens/landing_page/pages/page_two.dart';
import 'package:NicarAdmin/theme/theme.dart';
import 'package:NicarAdmin/utils/app_screen_utils.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({Key? key}) : super(key: key);

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  static const List<String> _headerElements = [
    "Inicio",
    "Misión",
    "Modelos",
    "Nosotros",
  ];
  final PageController controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: LayoutBuilder(
            builder: (context, constraints) => Column(children: [
                  //! HEADER
                  Container(
                      height: constraints.maxHeight * 0.1,
                      color: AppThemeColours.primaryColour,
                      padding: AppScreenUtils.appUIDefaultPadding,
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            //! LOGO AND NAME
                            Row(children: [
                              //! LOGO
                              CircleAvatar(
                                  radius: 20,
                                  backgroundColor:
                                      AppThemeColours.tertiaryColour,
                                  child: CircleAvatar(
                                    radius: 18,
                                    backgroundColor:
                                        AppThemeColours.secondaryColour,
                                    child: const CircleAvatar(
                                        radius: 15,
                                        backgroundImage:
                                            AssetImage("assets/logo.png")),
                                  )),

                              //! SPACER
                              const SizedBox(width: 10),

                              //! NAME
                              Text("NicAR",
                                  style: GoogleFonts.poppins(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w400,
                                      shadows: [
                                        Shadow(
                                            offset: const Offset(1.0, 2.0),
                                            blurRadius: 21.0,
                                            color: AppThemeColours.shadowColour)
                                      ],
                                      fontSize: 14.0))
                            ]),

                            //! SPACER
                            const Spacer(),

                            //! HEADER ELEMENTS
                            Row(
                                children: _headerElements
                                    .map((item) => InkWell(
                                        onTap: () => _scrollToIndex(
                                            _headerElements.indexOf(item)),
                                        child: Container(
                                            margin: const EdgeInsets.symmetric(
                                                horizontal: 5.0),
                                            padding:
                                                AppScreenUtils.headerPadding,
                                            child: Text(item,
                                                style: Theme.of(context)
                                                    .textTheme
                                                    .bodyText1))))
                                    .toList()),

                            //! SPACER
                            const SizedBox(width: 20.0),

                            //! BUTTONS
                            TextButton(
                                onPressed: () => showAuthDialogue(
                                    context: context,
                                    screenSize: MediaQuery.of(context).size),
                                style: TextButton.styleFrom(
                                    side: BorderSide(
                                        color: AppThemeColours.tertiaryColour,
                                        width: 2),
                                    padding:
                                        AppScreenUtils.headerButtonPadding),
                                child: Text("Admin",
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodyText2!
                                        .copyWith(
                                            color: AppThemeColours
                                                .tertiaryColour)))
                          ])),

                  //! BODY
                  Expanded(
                      child: PageView(
                          controller: controller,
                          physics: const BouncingScrollPhysics(),
                          scrollDirection: Axis.vertical,
                          pageSnapping: false,
                          children: const [
                        //! FIRST SCREEN
                        PageOne(),

                        //! SECOND SCREEN
                        PageTwo(),

                        // //! THIRD SCREEN
                        // PageThree(),

                        //! FOOTER
                        AboutUs()
                      ]))
                ])));
  }

  void _scrollToIndex(int index) {
    controller.animateToPage(index,
        duration: const Duration(seconds: 1),
        curve: Curves.fastLinearToSlowEaseIn);
  }

  //! AUTH DIALOGUE
  showAuthDialogue({required BuildContext context, required Size screenSize}) {
    showDialog(
        context: context,
        builder: (context) => Dialog(
            elevation: 12.0,
            child: Container(
                height: screenSize.height * 0.8,
                width: screenSize.width * 0.3,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(21.0),
                    border: Border.all(
                        color: AppThemeColours.tertiaryColour.withOpacity(0.5),
                        width: 3)),
                child: const AuthWrapper())));
  }
}
