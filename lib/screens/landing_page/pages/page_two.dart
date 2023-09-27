import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:NicarAdmin/theme/theme.dart';
import 'package:NicarAdmin/utils/app_screen_utils.dart';

class PageTwo extends StatelessWidget {
  const PageTwo({Key? key}) : super(key: key);
  static const List<String> _vaccinationBenefits = ["Android", "iOS"];
  static const List<String> _vaccinationEmojis = ["🚀", "🏫"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            padding: AppScreenUtils.appUIDefaultPadding,
            child: Column(children: [
              //! HEADER
              Expanded(
                  child: Row(children: [
                //! LEFT
                Expanded(
                    flex: 3,
                    child: SizedBox(
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                          //! QUESTION
                          Text("¿Por qué utilizarla?",
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyText1!
                                  .copyWith(
                                      color: AppThemeColours.primaryColour)),

                          //! SPACER
                          const SizedBox(height: 10.0),

                          //! ANSWER
                          Text(
                              "Aprender historia \nnunca ha sido tan divertido",
                              style: GoogleFonts.poppins(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 18.0,
                                  color:
                                      Theme.of(context).colorScheme.secondary)),

                          //! SPACER
                          const SizedBox(height: 10.0),

                          //! ANSWER
                          Text(
                              "Utilizando esta herramienta interactiva. \npuedes conocer y aprender sobre los \nedificios de la Vieja Managua ...",
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyText1!
                                  .copyWith(color: Colors.grey.shade600)),

                          //! SPACER
                          const SizedBox(height: 10.0),

                          //! BENEFITS
                          Row(
                            children: _vaccinationBenefits
                                .map((item) => Container(
                                    margin: const EdgeInsets.only(right: 21.0),
                                    padding:
                                        AppScreenUtils.containerPaddingSmall,
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius:
                                            BorderRadius.circular(12.0)),
                                    child: Row(children: [
                                      //! EMOJI
                                      Container(
                                          height: 45,
                                          width: 45,
                                          decoration: BoxDecoration(
                                              color: AppThemeColours
                                                  .textColourSecondary,
                                              borderRadius:
                                                  BorderRadius.circular(8.0)),
                                          child: Transform.scale(
                                              scale: 1.5,
                                              child: Center(
                                                  child: Text(
                                                      _vaccinationEmojis[
                                                          _vaccinationBenefits
                                                              .indexOf(item)],
                                                      textAlign:
                                                          TextAlign.center)))),

                                      //! SPACER
                                      const SizedBox(width: 10),

                                      //! ITEM NAME
                                      Text(item,
                                          style: Theme.of(context)
                                              .textTheme
                                              .bodyText2!
                                              .copyWith(
                                                  color: AppThemeColours
                                                      .textColourSecondary))
                                    ])))
                                .toList(),
                          )
                        ]))),

                //! RIGHT
                Expanded(
                    flex: 2,
                    child: Container(
                        padding: const EdgeInsets.symmetric(vertical: 50.0),
                        child: Column(children: [
                          //! TOP BUTTON
                          Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                CircleAvatar(
                                    radius: 16.0,
                                    backgroundColor:
                                        AppThemeColours.primaryColour,
                                    child: CircleAvatar(
                                        radius: 14.0,
                                        backgroundColor:
                                            AppThemeColours.backgroundColour,
                                        child: Icon(Icons.arrow_back_ios,
                                            size: 12.0,
                                            color: AppThemeColours
                                                .primaryColour))),

                                //! SPACER
                                const SizedBox(width: 20.0),

                                CircleAvatar(
                                    radius: 16.0,
                                    backgroundColor:
                                        AppThemeColours.textColourSecondary,
                                    child: const Icon(Icons.arrow_forward_ios,
                                        size: 12.0, color: Colors.white))
                              ]),

                          //! SPACER
                          const SizedBox(height: 10.0),

                          //! BOTTOM CARD
                          Expanded(
                              child: Material(
                                  elevation: 45.0,
                                  shadowColor: AppThemeColours
                                      .containersBackgroundColourSecondary,
                                  borderRadius: BorderRadius.circular(12.0),
                                  child: Column(children: [
                                    //! TOP
                                    Expanded(
                                        flex: 4,
                                        child: Container(
                                            padding: AppScreenUtils
                                                .containerPaddingSmall,
                                            decoration: BoxDecoration(
                                                color: AppThemeColours
                                                    .primaryColour,
                                                borderRadius: const BorderRadius
                                                        .only(
                                                    topLeft:
                                                        Radius.circular(12.0),
                                                    topRight:
                                                        Radius.circular(12.0))),
                                            child: Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  //! EMOJI & TEXT
                                                  Row(
                                                      children: _vaccinationBenefits
                                                          .take(1)
                                                          .map((item) => Expanded(
                                                              child: Container(
                                                                  margin: const EdgeInsets.only(right: 21.0),
                                                                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(12.0)),
                                                                  child: Row(children: [
                                                                    //! EMOJI
                                                                    Container(
                                                                        height:
                                                                            45,
                                                                        width:
                                                                            45,
                                                                        decoration: BoxDecoration(
                                                                            color:
                                                                                Colors.white.withOpacity(0.2),
                                                                            border: Border.all(color: Colors.white.withOpacity(0.8), width: 2.0),
                                                                            borderRadius: BorderRadius.circular(8.0)),
                                                                        child: Transform.scale(
                                                                            scale: 1.5,
                                                                            child: const Center(
                                                                              child: Text("💲", textAlign: TextAlign.center),
                                                                            ))),

                                                                    //! SPACER
                                                                    const SizedBox(
                                                                        width:
                                                                            20),

                                                                    //! ITEM NAME
                                                                    Text(
                                                                        "Escala Gratuita",
                                                                        style: Theme.of(context)
                                                                            .textTheme
                                                                            .bodyText1!
                                                                            .copyWith(color: Colors.white))
                                                                  ]))))
                                                          .toList()),

                                                  //! SPACER
                                                  const SizedBox(height: 20.0),

                                                  //! TEXT
                                                  const Text(
                                                      "Puedes utilizar la aplicación gratuitamente para aprender sobre ella y descubrir sus funciones, por lo que, podrás visualizar los Edificios de la Vieja Managua.")
                                                ]))),

                                    //! BOTTOM
                                    Expanded(
                                        flex: 1,
                                        child: Container(
                                            decoration: BoxDecoration(
                                                color: AppThemeColours
                                                    .secondaryColour,
                                                borderRadius: const BorderRadius
                                                        .only(
                                                    bottomLeft:
                                                        Radius.circular(12.0),
                                                    bottomRight:
                                                        Radius.circular(12.0))),
                                            child: const Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  //! TEXT
                                                  Text("Más Información"),

                                                  //! SPACER
                                                  SizedBox(width: 10.0),

                                                  //! ICON
                                                  Icon(Icons.arrow_forward_ios,
                                                      size: 12.0,
                                                      color: Colors.white)
                                                ])))
                                  ])))
                        ])))
              ])),

              //! FOOTER
              Expanded(
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                    //! HEAD
                    Text("¿Cómo me suscribo?",
                        style: Theme.of(context)
                            .textTheme
                            .bodyText1!
                            .copyWith(color: AppThemeColours.primaryColour)),

                    //! ANSWER
                    Text("Planes",
                        style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w500,
                            fontSize: 18.0,
                            color: Theme.of(context).colorScheme.secondary)),

                    //! ANSWER
                    Text(
                        "Existen 2 planes para acceder a las funciones completas de la aplicación. \nConoce las siguientes ...",
                        textAlign: TextAlign.center,
                        style: Theme.of(context)
                            .textTheme
                            .bodyText2!
                            .copyWith(color: Colors.grey.shade600)),

                    //! FOOTER
                    LayoutBuilder(
                        builder: (context, constraints) => Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  //! TOP
                                  Container(
                                      width: constraints.maxWidth * 0.45,
                                      padding:
                                          AppScreenUtils.containerPaddingSmall,
                                      decoration: BoxDecoration(
                                          color: AppThemeColours.primaryColour,
                                          borderRadius: const BorderRadius.only(
                                              topLeft: Radius.circular(21.0),
                                              topRight: Radius.circular(21.0),
                                              bottomLeft:
                                                  Radius.circular(21.0))),
                                      child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            //! HEADER
                                            Text("Plan Personal",
                                                style: Theme.of(context)
                                                    .textTheme
                                                    .bodyText2!
                                                    .copyWith(fontSize: 18.0)),

                                            //! SPACER
                                            const SizedBox(height: 10.0),

                                            //! MID
                                            const Text(
                                                "El plan personal te permite acceder de forma ilimitada a todos los modelos existentes y los nuevos que se agregarán en el futuro."),

                                            //! SPACER
                                            const SizedBox(height: 10.0),

                                            //! BUTTON
                                            SizedBox(
                                                width: (constraints.maxWidth *
                                                        0.46) /
                                                    2.2,
                                                child: ElevatedButton(
                                                    onPressed: () {},
                                                    style: ElevatedButton.styleFrom(
                                                        primary: AppThemeColours
                                                            .secondaryColour),
                                                    child: Row(children: [
                                                      //! BUTTON TEXT
                                                      Text("💲 1.99/mes",
                                                          style:
                                                              Theme.of(context)
                                                                  .textTheme
                                                                  .bodyText2),

                                                      //! SPACER
                                                      const SizedBox(
                                                          width: 10.0),

                                                      //! ICON
                                                      const Icon(
                                                          Icons
                                                              .arrow_forward_ios,
                                                          size: 12.0,
                                                          color: Colors.white)
                                                    ]))),

                                            const SizedBox(height: 10),

                                            //! NUMBER
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.end,
                                              children: [
                                                Container(
                                                    height: 35.0,
                                                    width: 35.0,
                                                    padding: const EdgeInsets.all(
                                                        8.0),
                                                    decoration: BoxDecoration(
                                                        color: Colors.white
                                                            .withOpacity(0.2),
                                                        border: Border.all(
                                                            color: Colors.white
                                                                .withOpacity(
                                                                    0.8),
                                                            width: 2.0),
                                                        borderRadius: const BorderRadius.only(
                                                            topLeft: Radius.circular(
                                                                21.0))),
                                                    child: Text("1",
                                                        textAlign:
                                                            TextAlign.center,
                                                        style: Theme.of(context)
                                                            .textTheme
                                                            .bodyText2)),
                                              ],
                                            )
                                          ])),

                                  //! BOTTOM
                                  Container(
                                      width: constraints.maxWidth * 0.45,
                                      padding:
                                          AppScreenUtils.containerPaddingSmall,
                                      decoration: BoxDecoration(
                                          color: AppThemeColours.tertiaryColour,
                                          borderRadius: const BorderRadius.only(
                                              topLeft: Radius.circular(21.0),
                                              topRight: Radius.circular(21.0),
                                              bottomRight:
                                                  Radius.circular(21.0))),
                                      child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            //! HEADER
                                            Text("Plan Escolar",
                                                style: Theme.of(context)
                                                    .textTheme
                                                    .bodyText1!
                                                    .copyWith(
                                                        fontSize: 18.0,
                                                        color: AppThemeColours
                                                            .secondaryColour)),

                                            //! SPACER
                                            const SizedBox(height: 10.0),

                                            //! MID
                                            Text(
                                                "El plan escolar permite a instituciones educativas otorgar a sus estudiantes cuentas institucionales para utilizar la aplicación como estudiante de forma gratuita. Los precios varían según cantidad de cuentas.",
                                                style: Theme.of(context)
                                                    .textTheme
                                                    .bodyText2!
                                                    .copyWith(
                                                        color: Colors
                                                            .grey.shade600)),

                                            //! SPACER
                                            const SizedBox(height: 10.0),

                                            //! BUTTON
                                            SizedBox(
                                                width: (constraints.maxWidth *
                                                        0.46) /
                                                    2.2,
                                                child: ElevatedButton(
                                                    onPressed: () {},
                                                    style: ElevatedButton.styleFrom(
                                                        elevation: 0.0,
                                                        side: BorderSide(
                                                            color: AppThemeColours
                                                                .secondaryColour,
                                                            width: 2.0),
                                                        primary: AppThemeColours
                                                            .tertiaryColour),
                                                    child: Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .start,
                                                        children: [
                                                          //! BUTTON TEXT
                                                          Text(
                                                              "Desde 💲 200/mes",
                                                              style: Theme.of(
                                                                      context)
                                                                  .textTheme
                                                                  .bodyText2!
                                                                  .copyWith(
                                                                      color: AppThemeColours
                                                                          .secondaryColour)),

                                                          //! SPACER
                                                          const SizedBox(
                                                              width: 10.0),

                                                          //! ICON
                                                          Icon(
                                                              Icons
                                                                  .arrow_forward_ios,
                                                              size: 12.0,
                                                              color: AppThemeColours
                                                                  .secondaryColour)
                                                        ]))),

                                            //! SPACER
                                            const SizedBox(height: 10.0),

                                            //! NUMBER
                                            Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.end,
                                                children: [
                                                  Container(
                                                      height: 35.0,
                                                      width: 35.0,
                                                      padding:
                                                          const EdgeInsets.all(
                                                              8.0),
                                                      decoration: BoxDecoration(
                                                          color: AppThemeColours
                                                              .primaryColour
                                                              .withOpacity(0.2),
                                                          border: Border.all(
                                                              color: AppThemeColours
                                                                  .secondaryColour,
                                                              width: 2.0),
                                                          borderRadius:
                                                              const BorderRadius.only(
                                                                  topLeft: Radius.circular(
                                                                      21.0))),
                                                      child: Text("2",
                                                          textAlign:
                                                              TextAlign.center,
                                                          style: Theme.of(context)
                                                              .textTheme
                                                              .bodyText2!
                                                              .copyWith(color: AppThemeColours.secondaryColour)))
                                                ])
                                          ]))
                                ]))
                  ]))
            ])));
  }
}
