import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../animations/on_hover.dart';

class FeatureCard extends StatelessWidget {
  final String title, description;
  final List<Color> gradient;
  final Function()? onTap;
  const FeatureCard(
      {super.key,
      required this.title,
      required this.description,
      required this.gradient,
      required this.onTap});

  @override
  Widget build(BuildContext context) {
    double boxSize =
        MediaQuery.of(context).size.height > MediaQuery.of(context).size.width
            ? MediaQuery.of(context).size.width / 2
            : MediaQuery.of(context).size.height / 2.5;
    return OnHover(builder: (isHovered) {
      return Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          height: boxSize + 5,
          width: boxSize - 80,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(Radius.circular(8)),
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: gradient,
            ),
          ),
          child: Container(
            width: boxSize - 90,
            height: boxSize - 75,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(8)),
              color: Colors.black,
            ),
            alignment: Alignment.topCenter,
            child: Padding(
              padding: const EdgeInsets.all(5.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      title,
                      overflow: TextOverflow.ellipsis,
                      style: GoogleFonts.roboto(
                        fontWeight: FontWeight.bold,
                        fontSize: 22,
                      ),
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    description,
                    textAlign: TextAlign.start,
                    maxLines: 4,
                    overflow: TextOverflow.ellipsis,
                    style: GoogleFonts.roboto(
                      fontWeight: FontWeight.w400,
                      fontSize: 18,
                    ),
                  ),
                  const Spacer(),
                  OutlinedButton.icon(
                    style: OutlinedButton.styleFrom(
                      backgroundColor: Colors.transparent,
                    ),
                    onPressed: onTap,
                    icon: const Icon(Icons.remove_red_eye_outlined,
                        color: Colors.white),
                    label: const Text(
                      "Read more",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      );
    });
  }
}

//for mobile
class MobileFeatureCard extends StatelessWidget {
  final String title, description;
  final List<Color> gradient;
  final Function()? onTap;
  const MobileFeatureCard(
      {super.key,
      required this.title,
      required this.description,
      required this.gradient,
      required this.onTap});

  @override
  Widget build(BuildContext context) {
    double boxSize =
        MediaQuery.of(context).size.height > MediaQuery.of(context).size.width
            ? MediaQuery.of(context).size.width / 2
            : MediaQuery.of(context).size.height / 2.5;
    return OnHover(builder: (isHovered) {
      return Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          height: boxSize - 100,
          width: boxSize - 80,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(Radius.circular(8)),
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: gradient,
            ),
          ),
          child: Container(
            width: boxSize + 160,
            height: boxSize - 105,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(8)),
              color: Colors.black,
            ),
            alignment: Alignment.topCenter,
            child: Padding(
              padding: const EdgeInsets.all(5.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      title,
                      overflow: TextOverflow.ellipsis,
                      style: GoogleFonts.roboto(
                        fontWeight: FontWeight.bold,
                        fontSize: 22,
                      ),
                    ),
                  ),
                  const SizedBox(height: 4),
                  Padding(
                    padding: const EdgeInsets.all(3.0),
                    child: Text(
                      description,
                      textAlign: TextAlign.start,
                      maxLines: 4,
                      overflow: TextOverflow.ellipsis,
                      style: GoogleFonts.robotoSlab(
                        fontWeight: FontWeight.w400,
                        fontSize: 16,
                      ),
                    ),
                  ),
                  const Spacer(),
                  OutlinedButton.icon(
                    style: OutlinedButton.styleFrom(
                      backgroundColor: Colors.transparent,
                    ),
                    onPressed: onTap,
                    icon: const Icon(Icons.remove_red_eye_outlined,
                        color: Colors.white),
                    label: const Text(
                      "Read more",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      );
    });
  }
}
