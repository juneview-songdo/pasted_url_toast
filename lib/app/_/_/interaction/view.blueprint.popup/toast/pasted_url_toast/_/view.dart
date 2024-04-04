import 'package:flutter/material.dart';

import '../../../../../../../../main.dart';
import '_/state_child.dart';
import '_/state_mother.dart';

class NewView extends StatefulWidget {
  NewView({super.key});

  @override
  State<NewView> createState() => StateChild();
}

class NewViewState extends State<NewView> with StateMother {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
            decoration: BoxDecoration(
              color: Colors.black.withOpacity(0.75),
              borderRadius: BorderRadius.circular(40.0),
            ),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Gap(30),
                //icon
                // Icon(Icons.check_circle_outline_rounded).iconSize(30),
                SvgPicture.asset('assets/view/pasted_url_toast/copy.svg',
                    width: 24,
                    height: 24,
                    colorFilter: ColorFilter.mode(
                        Colors.white.withOpacity(0.9),
                        BlendMode.srcIn)),
                // Icon(Icons.upload,color: Colors.white.withOpacity(0.9),).width(24).height(24),
                Gap(10),
                Text("profile URL copied!")
                    .textColor(Colors.white.withOpacity(0.9))
                    .fontWeight(FontWeight.bold)
                    .padding(right: 30, vertical: 15),
              ],
            )),
      ],
    );
  }
}

main() async {
  return buildApp(appHome: NewView().center());
}
