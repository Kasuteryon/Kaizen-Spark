import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:NicarAdmin/theme/theme.dart';
import 'package:NicarAdmin/utils/app_screen_utils.dart';
import 'package:url_launcher/url_launcher.dart';

class PageThree extends StatelessWidget {
  const PageThree({Key? key}) : super(key: key);
  static const List<Map<String, String>> _newsArticles = [
    {
      "title": "9 Things Everyone Should Know About the Coronavirus Outbreak.",
      "subheader":
          "COVID-19 upended daily life in the United States for more than two years as SARS-CoV-2, the virus spreading the disease, caused surges in infections across the country. In some ways ...",
      "url": "https://www.yalemedicine.org/news/2019-novel-coronavirus"
    },
    {
      "title": "The Sinovac-CoronaVac COVID-19 vaccine: What you need to know",
      "subheader":
          "The WHO Strategic Advisory Group of Experts on Immunization (SAGE) has issued updated interim policy recommendations for the use of the Sinovac-CoronaVac vaccine against COVID-19. This article provides...",
      "url":
          "https://www.who.int/news-room/feature-stories/detail/the-sinovac-covid-19-vaccine-what-you-need-to-know"
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            padding: AppScreenUtils.appUIDefaultPadding,
            child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  //! HEADER

                  //! SPACER
                  const SizedBox(height: 20.0),

                  //! MIDDLE
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        //! LEFT
                        Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Vaccine type",
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyText1!
                                      .copyWith(
                                          color:
                                              AppThemeColours.primaryColour)),

                              //! SPACER
                              const SizedBox(height: 10.0),

                              //! ANSWER
                              Text("Vaccine Type",
                                  style: GoogleFonts.poppins(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 18.0,
                                      color: Theme.of(context)
                                          .colorScheme
                                          .secondary)),

                              //! SPACER
                              const SizedBox(height: 20.0),

                              //! ANSWER
                              Text(
                                  "Before getting vaccinated, it is better to know your\nown vaccine and advantages by using it",
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyText2!
                                      .copyWith(color: Colors.grey.shade600))
                            ]),

                        //! SPACER
                        const SizedBox(width: 10.0),

                        //! RIGHT
                        Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              //! LEFT SIDE
                              Material(
                                  shadowColor: AppThemeColours.shadowColour,
                                  elevation: 42.0,
                                  borderRadius: const BorderRadius.only(
                                      topLeft: Radius.circular(21.0),
                                      topRight: Radius.circular(21.0),
                                      bottomLeft: Radius.circular(21.0)),
                                  child: Container(
                                      padding:
                                          AppScreenUtils.containerPaddingSmall,
                                      width: MediaQuery.of(context).size.width *
                                          0.2,
                                      decoration: BoxDecoration(
                                          borderRadius: const BorderRadius.only(
                                              topLeft: Radius.circular(21.0),
                                              topRight: Radius.circular(21.0),
                                              bottomLeft:
                                                  Radius.circular(21.0)),
                                          color: AppThemeColours.primaryColour),
                                      child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            //! ICON AND TEXT
                                            Row(children: [
                                              //! EMOJI
                                              Container(
                                                  height: 35,
                                                  width: 35,
                                                  decoration: BoxDecoration(
                                                      color: AppThemeColours
                                                          .tertiaryColour
                                                          .withOpacity(0.2),
                                                      border: Border.all(
                                                          width: 2.0,
                                                          color: Colors.white
                                                              .withOpacity(
                                                                  0.8)),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8.0)),
                                                  child: Transform.scale(
                                                      scale: 1.5,
                                                      child: const Center(
                                                          child: Text("🧫",
                                                              textAlign:
                                                                  TextAlign.center)))),

                                              //! SPACER
                                              const SizedBox(width: 10),

                                              //! ITEM NAME
                                              Text("SinoVac",
                                                  style: Theme.of(context)
                                                      .textTheme
                                                      .bodyText2!
                                                      .copyWith(
                                                          fontSize: 18.0,
                                                          color: AppThemeColours
                                                              .tertiaryColour))
                                            ]),

                                            //! SPACER
                                            const SizedBox(height: 10.0),

                                            //! TEXT
                                            Text(
                                                "Proper vaccine administration is critical to ensure that vaccination is safe and effective.",
                                                style: Theme.of(context)
                                                    .textTheme
                                                    .bodyText2),

                                            //! SPACER
                                            const SizedBox(height: 10.0),

                                            //! BUTTON
                                            SizedBox(
                                                width: (MediaQuery.of(context)
                                                            .size
                                                            .width *
                                                        0.2) /
                                                    1.5,
                                                child: ElevatedButton(
                                                    onPressed: () {},
                                                    style: ElevatedButton.styleFrom(
                                                        primary: AppThemeColours
                                                            .secondaryColour),
                                                    child: Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .start,
                                                        children: [
                                                          //! BUTTON TEXT
                                                          Text(
                                                              "More information",
                                                              style: Theme.of(
                                                                      context)
                                                                  .textTheme
                                                                  .bodyText2!
                                                                  .copyWith(
                                                                      color: AppThemeColours
                                                                          .tertiaryColour)),

                                                          //! SPACER
                                                          const SizedBox(
                                                              width: 10.0),

                                                          //! ICON
                                                          Icon(
                                                              Icons
                                                                  .arrow_forward_ios,
                                                              size: 12.0,
                                                              color: AppThemeColours
                                                                  .tertiaryColour)
                                                        ])))
                                          ]))),

                              //! SPACER
                              const SizedBox(width: 10.0),

                              //! RIGHT SIDE
                              Container(
                                  padding: AppScreenUtils.containerPaddingSmall,
                                  width:
                                      MediaQuery.of(context).size.width * 0.2,
                                  decoration: BoxDecoration(
                                      borderRadius: const BorderRadius.only(
                                          topLeft: Radius.circular(21.0),
                                          topRight: Radius.circular(21.0),
                                          bottomRight: Radius.circular(21.0)),
                                      color: AppThemeColours.tertiaryColour),
                                  child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        //! ICON AND TEXT
                                        Row(children: [
                                          //! EMOJI
                                          Container(
                                              height: 35,
                                              width: 35,
                                              decoration: BoxDecoration(
                                                  color: AppThemeColours
                                                      .textColourSecondary,
                                                  border: Border.all(
                                                      width: 2.0,
                                                      color: AppThemeColours
                                                          .secondaryColour),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          8.0)),
                                              child: Transform.scale(
                                                  scale: 1.5,
                                                  child: const Center(
                                                      child: Text("🧫",
                                                          textAlign: TextAlign
                                                              .center)))),

                                          //! SPACER
                                          const SizedBox(width: 20),

                                          //! ITEM NAME
                                          Text("AstraZeneca",
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .bodyText2!
                                                  .copyWith(
                                                      fontSize: 18.0,
                                                      color: AppThemeColours
                                                          .secondaryColour))
                                        ]),

                                        //! SPACER
                                        const SizedBox(height: 10.0),

                                        //! TEXT
                                        Text(
                                            "Proper vaccine administration is critical to ensure that vaccination is safe and effective.",
                                            style: Theme.of(context)
                                                .textTheme
                                                .bodyText2!
                                                .copyWith(
                                                    fontSize: 12.0,
                                                    color:
                                                        Colors.grey.shade600)),

                                        //! SPACER
                                        const SizedBox(height: 10.0),

                                        //! BUTTON
                                        SizedBox(
                                          width: (MediaQuery.of(context)
                                                      .size
                                                      .width *
                                                  0.2) /
                                              1.5,
                                          child: ElevatedButton(
                                              onPressed: () {},
                                              style: ElevatedButton.styleFrom(
                                                  side: BorderSide(
                                                      width: 2.0,
                                                      color: AppThemeColours
                                                          .secondaryColour),
                                                  elevation: 0.0,
                                                  primary: AppThemeColours
                                                      .tertiaryColour),
                                              child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  children: [
                                                    //! BUTTON TEXT
                                                    Text("More information",
                                                        style: Theme.of(context)
                                                            .textTheme
                                                            .bodyText2!
                                                            .copyWith(
                                                                color: AppThemeColours
                                                                    .secondaryColour)),

                                                    //! SPACER
                                                    const SizedBox(width: 10.0),

                                                    //! ICON
                                                    Icon(
                                                        Icons.arrow_forward_ios,
                                                        size: 12.0,
                                                        color: AppThemeColours
                                                            .secondaryColour)
                                                  ])),
                                        )
                                      ]))
                            ]),
                      ]),

                  //! SPACER
                  const SizedBox(height: 20.0),

                  //! PROGRESS INDICATOR
                  SizedBox(
                      width: 150.0,
                      child: LinearProgressIndicator(
                          value: 0.3,
                          backgroundColor: AppThemeColours.primaryColour,
                          color: AppThemeColours.secondaryColour)),

                  //! FOOTER / NEWS ARTICLES
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        //! LEFT
                        Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Articles",
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyText1!
                                      .copyWith(
                                          color:
                                              AppThemeColours.primaryColour)),

                              //! SPACER
                              const SizedBox(height: 20.0),

                              //! ANSWER
                              Text("Here are some \nnews articles about COVID",
                                  style: GoogleFonts.poppins(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 18.0,
                                      color: Theme.of(context)
                                          .colorScheme
                                          .secondary)),

                              //! SPACER
                              const SizedBox(height: 20.0),

                              //! ANSWER
                              Text(
                                  "Link to main articles are attached in each news item",
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyText2!
                                      .copyWith(color: Colors.grey.shade600))
                            ]),

                        //! SPACER
                        const SizedBox(width: 20.0),

                        //! RIGHT
                        Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: _newsArticles
                                .map((newsItem) => Container(
                                    padding:
                                        AppScreenUtils.containerPaddingSmall,
                                    width:
                                        MediaQuery.of(context).size.width * 0.2,
                                    margin: _newsArticles.indexOf(newsItem).isEven
                                        ? const EdgeInsets.only(right: 10.0)
                                        : EdgeInsets.zero,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.only(
                                            bottomRight:
                                                const Radius.circular(21.0),
                                            topLeft: _newsArticles
                                                    .indexOf(newsItem)
                                                    .isEven
                                                ? const Radius.circular(21.0)
                                                : Radius.zero,
                                            topRight: _newsArticles
                                                    .indexOf(newsItem)
                                                    .isEven
                                                ? Radius.zero
                                                : const Radius.circular(21.0),
                                            bottomLeft:
                                                const Radius.circular(21.0)),
                                        color: _newsArticles.indexOf(newsItem).isEven
                                            ? AppThemeColours.primaryColour
                                            : AppThemeColours.tertiaryColour),
                                    child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                        children: [
                                          //! TITLE
                                          Text(newsItem["title"]!,
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .bodyText2!
                                                  .copyWith(
                                                      fontSize: 18.0,
                                                      color: _newsArticles
                                                              .indexOf(newsItem)
                                                              .isEven
                                                          ? AppThemeColours
                                                              .tertiaryColour
                                                          : AppThemeColours
                                                              .secondaryColour)),

                                          //! SPACER
                                          const SizedBox(height: 10.0),

                                          //! SUBTITLE
                                          Text(newsItem["subheader"]!,
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .bodyText2!
                                                  .copyWith(
                                                      fontSize: 12.0,
                                                      color: _newsArticles
                                                              .indexOf(newsItem)
                                                              .isEven
                                                          ? AppThemeColours
                                                              .tertiaryColour
                                                          : AppThemeColours
                                                              .secondaryColour)),

                                          //! SPACER
                                          const SizedBox(height: 10.0),

                                          //! READ MORE BUTTON
                                          ElevatedButton(
                                              onPressed: () => _launchUrl(
                                                  newsUrl: newsItem["url"]!),
                                              style: ElevatedButton.styleFrom(
                                                  elevation: 0.0,
                                                  primary: _newsArticles
                                                          .indexOf(newsItem)
                                                          .isEven
                                                      ? AppThemeColours
                                                          .tertiaryColour
                                                      : AppThemeColours
                                                          .secondaryColour),
                                              child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  children: [
                                                    //! BUTTON TEXT
                                                    Text("More information",
                                                        style: Theme.of(context)
                                                            .textTheme
                                                            .bodyText2!
                                                            .copyWith(
                                                                color: _newsArticles
                                                                        .indexOf(
                                                                            newsItem)
                                                                        .isEven
                                                                    ? AppThemeColours
                                                                        .secondaryColour
                                                                    : AppThemeColours
                                                                        .tertiaryColour)),

                                                    //! SPACER
                                                    const SizedBox(width: 10.0),

                                                    //! ICON
                                                    Icon(
                                                        Icons.arrow_forward_ios,
                                                        size: 12.0,
                                                        color: _newsArticles
                                                                .indexOf(
                                                                    newsItem)
                                                                .isEven
                                                            ? AppThemeColours
                                                                .secondaryColour
                                                            : AppThemeColours
                                                                .tertiaryColour)
                                                  ])),

                                          //! SPACER
                                          const SizedBox(height: 10.0),
                                        ])))
                                .toList()),
                      ])
                ])));
  }

  //! LAUNCH URL
  Future<void> _launchUrl({required String newsUrl}) async {
    if (!await launchUrl(Uri.parse(newsUrl))) {
      throw "Could not launch News Article";
    }
  }
}
