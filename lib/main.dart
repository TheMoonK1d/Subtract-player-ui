import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

Color albumColor = const Color(0xffeed70f);
Color albumColorDark = const Color(0xFF978909);

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Subtract',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
            useMaterial3: true,
            colorSchemeSeed: albumColor,
            brightness: Brightness.light),
        darkTheme: ThemeData(
            useMaterial3: true,
            colorSchemeSeed: albumColor,
            brightness: Brightness.dark),
        themeMode: ThemeMode.system,
        home: const Page1());
  }
}

class Page1 extends StatelessWidget {
  const Page1({super.key});
  @override
  Widget build(BuildContext context) {
    Color navColor = ElevationOverlay.applySurfaceTint(
        Theme.of(context).colorScheme.surface,
        Theme.of(context).colorScheme.surfaceTint,
        0);
    return AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle.light.copyWith(
          systemNavigationBarContrastEnforced: true,
          systemNavigationBarColor: navColor,
          statusBarColor: navColor,
          systemNavigationBarDividerColor: navColor,
          systemNavigationBarIconBrightness:
              Theme.of(context).brightness == Brightness.light
                  ? Brightness.dark
                  : Brightness.light,
          statusBarIconBrightness:
              Theme.of(context).brightness == Brightness.light
                  ? Brightness.dark
                  : Brightness.light,
        ),
        child: SafeArea(
            child: Scaffold(
                body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(10),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    textAlign: TextAlign.start,
                    "Hey",
                    style: GoogleFonts.poppins(
                      fontSize: 30,
                      letterSpacing: 3,
                      color: Theme.of(context).colorScheme.primary,
                      fontWeight: FontWeight.w900,
                      fontStyle: FontStyle.normal,
                    ),
                  ),
                  Expanded(child: Container()),
                  Container(
                      height: 45,
                      width: 100,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: Colors.black.withOpacity(0.07)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                Icons.headphones_battery_rounded,
                              )),
                          Text(
                            textAlign: TextAlign.start,
                            "32%",
                            style: GoogleFonts.poppins(
                              fontSize: 15,
                              fontWeight: FontWeight.w600,
                              fontStyle: FontStyle.normal,
                            ),
                          ),
                        ],
                      )),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: SizedBox(
                  height: 20,
                  width: 100,
                  child: Image.asset(
                    'assets/wave.png',
                    color: Theme.of(context).colorScheme.primary,
                  )),
            ),
            const SizedBox(
              height: 50,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: SizedBox(
                height: 100,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      textAlign: TextAlign.start,
                      "Now Playing 🎙",
                      style: GoogleFonts.poppins(
                        fontSize: 20,
                        fontWeight: FontWeight.w900,
                        fontStyle: FontStyle.normal,
                      ),
                    ),
                    Text(
                      textAlign: TextAlign.start,
                      "Colorblind",
                      style: GoogleFonts.poppins(
                        fontSize: 25,
                        letterSpacing: 2,
                        fontWeight: FontWeight.w500,
                        fontStyle: FontStyle.normal,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
                child: ListView.builder(
              itemCount: 10,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(10),
                  child: Container(
                    height: 90,
                    //width: 300,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: navColor,
                        boxShadow: [
                          BoxShadow(
                              blurRadius: 6,
                              spreadRadius: 2,
                              offset: const Offset(0, 8),
                              color: Colors.black.withOpacity(0.1))
                        ]),
                    child: Padding(
                      padding: const EdgeInsets.all(10),
                      child: Row(
                        children: [
                          SizedBox(
                            height: 60,
                            width: 60,
                            child: ClipRRect(
                                borderRadius:
                                    const BorderRadius.all(Radius.circular(10)),
                                child: Image.asset('assets/th.jpg')),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  textAlign: TextAlign.start,
                                  "Song",
                                  style: GoogleFonts.poppins(
                                    fontSize: 15,
                                    letterSpacing: 2,
                                    fontWeight: FontWeight.w900,
                                    fontStyle: FontStyle.normal,
                                  ),
                                ),
                                Text(
                                  textAlign: TextAlign.start,
                                  "Ed Sheeran - Subtract",
                                  style: GoogleFonts.poppins(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w500,
                                    fontStyle: FontStyle.normal,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Expanded(child: Container()),
                          IconButton(
                              onPressed: () {},
                              icon: const Icon(Icons.more_vert_rounded))
                        ],
                      ),
                    ),
                  ),
                );
              },
            )),
            Padding(
                padding: const EdgeInsets.all(10),
                child: SizedBox(
                  height: 80,
                  width: 400,
                  child: Container(
                    color: navColor,
                    child: Padding(
                      padding: const EdgeInsets.all(0),
                      child: Row(
                        children: [
                          const SizedBox(
                            width: 10,
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => const Page2(),
                                  ));
                            },
                            child: SizedBox(
                              height: 55,
                              width: 55,
                              child: ClipRRect(
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(10)),
                                  child: Image.asset('assets/th (1).jpg')),
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(10),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Stack(
                                      //alignment: Alignment.,
                                      children: [
                                        Container(
                                          height: 3,
                                          width: 210,
                                          decoration: BoxDecoration(
                                              color:
                                                  Colors.black.withOpacity(0.3),
                                              borderRadius:
                                                  const BorderRadius.all(
                                                      Radius.circular(10))),
                                        ),
                                        Container(
                                          height: 3,
                                          width: 90,
                                          decoration: BoxDecoration(
                                              color: albumColor,
                                              borderRadius:
                                                  const BorderRadius.only(
                                                      topLeft:
                                                          Radius.circular(10),
                                                      bottomLeft:
                                                          Radius.circular(10),
                                                      topRight:
                                                          Radius.circular(0),
                                                      bottomRight:
                                                          Radius.circular(0))),
                                        ),
                                      ],
                                    ),
                                    Text(
                                      textAlign: TextAlign.start,
                                      "Ed Sheeran Colo ...",
                                      style: GoogleFonts.poppins(
                                        fontSize: 15,
                                        //color: const Color(0xffeed70f),
                                        fontWeight: FontWeight.w500,
                                        fontStyle: FontStyle.normal,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Padding(
                                padding: const EdgeInsets.all(5),
                                child: Center(
                                  child: IconButton(
                                      onPressed: () {},
                                      icon: const Icon(
                                        Icons.pause_circle_filled_rounded,
                                        size: 50,
                                      )),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ))
          ],
        ))));
  }
}

class Page2 extends StatelessWidget {
  const Page2({super.key});
  @override
  Widget build(BuildContext context) {
    Color navColor = ElevationOverlay.applySurfaceTint(
        Theme.of(context).colorScheme.surface,
        Theme.of(context).colorScheme.surfaceTint,
        0);
    return AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle.light.copyWith(
          systemNavigationBarContrastEnforced: true,
          systemNavigationBarColor: navColor,
          statusBarColor: navColor,
          systemNavigationBarDividerColor: navColor,
          systemNavigationBarIconBrightness:
              Theme.of(context).brightness == Brightness.light
                  ? Brightness.dark
                  : Brightness.light,
          statusBarIconBrightness:
              Theme.of(context).brightness == Brightness.light
                  ? Brightness.dark
                  : Brightness.light,
        ),
        child: SafeArea(
          child: Scaffold(
            //backgroundColor: Color(0xfffeaeae6),

            body: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(50),
                  child: Center(
                    child: ClipRRect(
                        borderRadius:
                            const BorderRadius.all(Radius.circular(30)),
                        child: Image.asset('assets/th.jpg')),
                  ),
                ),
                Stack(
                  //alignment: Alignment.,
                  children: [
                    Container(
                      height: 3,
                      width: 300,
                      decoration: BoxDecoration(
                          color: Colors.black.withOpacity(0.3),
                          borderRadius:
                              const BorderRadius.all(Radius.circular(10))),
                    ),
                    Container(
                      height: 3,
                      width: 50,
                      decoration: BoxDecoration(
                          color: albumColor,
                          borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(10),
                              bottomLeft: Radius.circular(10),
                              topRight: Radius.circular(0),
                              bottomRight: Radius.circular(0))),
                    ),
                  ],
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 55, vertical: 5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        textAlign: TextAlign.start,
                        "0:40",
                        style: GoogleFonts.poppins(
                          fontSize: 13,
                          fontWeight: FontWeight.w200,
                          fontStyle: FontStyle.normal,
                        ),
                      ),
                      Text(
                        textAlign: TextAlign.start,
                        "- 3.29",
                        style: GoogleFonts.poppins(
                          fontSize: 13,
                          fontWeight: FontWeight.w200,
                          fontStyle: FontStyle.normal,
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(child: Container()),
                const SizedBox(
                  height: 20,
                ),
                Column(
                  children: [
                    Text(
                      textAlign: TextAlign.start,
                      "Color blind",
                      style: GoogleFonts.poppins(
                        fontSize: 25,
                        fontWeight: FontWeight.w900,
                        fontStyle: FontStyle.normal,
                      ),
                    ),
                    Text(
                      textAlign: TextAlign.start,
                      "Ed Sheeran",
                      style: GoogleFonts.poppins(
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                        fontStyle: FontStyle.normal,
                      ),
                    ),
                    Text(
                      textAlign: TextAlign.start,
                      "Subtract",
                      style: GoogleFonts.poppins(
                        fontSize: 15,
                        fontWeight: FontWeight.w200,
                        fontStyle: FontStyle.normal,
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(30),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            color: Colors.black.withOpacity(0.2)),
                        child: Center(
                          child: IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                Icons.skip_previous_rounded,
                                //size: 50,
                              )),
                        ),
                      ),
                      const SizedBox(
                        width: 30,
                      ),
                      Container(
                        height: 70,
                        width: 70,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            color: Colors.black.withOpacity(0.2)),
                        child: Center(
                          child: IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.pause_rounded,
                                size: 40,
                                color: albumColorDark,
                              )),
                        ),
                      ),
                      const SizedBox(
                        width: 30,
                      ),
                      Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            color: Colors.black.withOpacity(0.2)),
                        child: Center(
                          child: IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                Icons.skip_next_rounded,
                              )),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(30),
                  child: Row(
                    children: [
                      Container(
                        height: 45,
                        width: 45,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            color: Colors.black.withOpacity(0)),
                        child: Center(
                          child: IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                Icons.shuffle_rounded,
                              )),
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Container(
                        height: 45,
                        width: 45,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            color: Colors.black.withOpacity(0)),
                        child: Center(
                          child: IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                Icons.list_rounded,
                                //size: 50,
                              )),
                        ),
                      ),
                      Expanded(child: Container()),
                      Container(
                          height: 45,
                          width: 120,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              color: albumColor.withOpacity(0.2)),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              IconButton(
                                  onPressed: () {},
                                  icon: Icon(
                                    Icons.favorite,
                                    color: albumColor,
                                    //size: 50,
                                  )),
                              Text(
                                textAlign: TextAlign.start,
                                "Added",
                                style: GoogleFonts.poppins(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w600,
                                  fontStyle: FontStyle.normal,
                                ),
                              ),
                            ],
                          )),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
