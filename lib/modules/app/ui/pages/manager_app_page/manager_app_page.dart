import 'package:fideliza_app/shared/common/ui/src/helpers/fideliza_validators.dart';
import 'package:fideliza_app/shared/common/ui/src/widgets/fideliza_circular_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../../../../../shared/common/ui/src/widgets/fideliza_button.dart';
import '../../../../../shared/common/ui/src/widgets/fideliza_dialog.dart';
import '../../../../../shared/common/ui/src/widgets/fideliza_text_from_field.dart';
import '../../../../auth/auth_routes.dart';
import 'dart:ui' as ui;

class ManagerAppPage extends StatefulWidget {
  const ManagerAppPage({Key? key}) : super(key: key);

  @override
  State<ManagerAppPage> createState() => _ManagerAppPageState();
}

class _ManagerAppPageState extends State<ManagerAppPage> {
  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery
        .of(context)
        .size;
    return Scaffold(
        backgroundColor: const Color(0xA2A5F8EC),
        appBar: AppBar(
          title: const Text('Development'),
        ),
        body: Container(
          child: CustomPaint(
            size: Size(size.width, (size.width * 1.0).toDouble()),
            //You can Replace [WIDTH] with your desired width for Custom Paint and height will be calculated automatically
            painter: RPSCustomPainter(),
          ),
        )
      // body: Center(
      //   child: SingleChildScrollView(
      //     child: Form(
      //       key: formKey,
      //       child: Column(
      //         children: [
      //          Padding(
      //             padding: const EdgeInsets.all(18.0),
      //             child: FidelizaTextFromField(
      //               validator: FidelizaValidators.emailValidator('\u26A0 Email inválido'),
      //               hint: "Email",
      //             ),
      //           ),
      //           const Padding(
      //             padding: EdgeInsets.all(18.0),
      //             child: FidelizaTextFromField(
      //               isSecure: true,
      //               hint: "Password",
      //             ),
      //           ),
      //           Padding(
      //             padding: const EdgeInsets.only(left: 18.0, right: 18.0),
      //             child: Row(
      //               mainAxisAlignment: MainAxisAlignment.center,
      //               children: [
      //                 FidelizaCircularButton(
      //                     onPressed: () {
      //                       if(formKey.currentState!.validate()){
      //
      //                       }
      //                     },
      //                     icon: 'assets/icons/fb.svg',
      //                     iconColor: const Color(0xFF212BF3)),
      //                 const SizedBox(
      //                   width: 25.0,
      //                 ),
      //                 FidelizaCircularButton(
      //                     onPressed: () {},
      //                     icon: 'assets/icons/google.svg',
      //                     iconColor: const Color(0xFCE71111)),
      //                 const SizedBox(
      //                   width: 25.0,
      //                 ),
      //                 FidelizaCircularButton(
      //                     onPressed: () {
      //                     },
      //                     icon: 'assets/icons/apple.svg',
      //                     iconColor: const Color(0xFC070707))
      //               ],
      //             ),
      //           ),
      //           const SizedBox(
      //             height: 300.0,
      //           ),
      //           Row(
      //             mainAxisAlignment: MainAxisAlignment.center,
      //             children: [
      //               FidelizaButton(
      //                 text: 'Push to next page',
      //                 onPressed: () {
      //                   print('Show Dialog');
      //                   fidelizaDialog(context);
      //                 },
      //               ),
      //               const SizedBox(
      //                 width: 25.0,
      //               ),
      //               FidelizaButton(
      //                 isStroked: true,
      //                 text: 'Push to next page',
      //                 onPressed: () {
      //                   Modular.to.pushNamed(
      //                       '${AuthRoutes.rootRoute}${AuthRoutes.loginRoute}');
      //                 },
      //               ),
      //             ],
      //           )
      //         ],
      //       ),
      //     ),
      //   ),
    // )
    // ,
    );
  }
}

class RPSCustomPainter extends CustomPainter{

  @override
  void paint(Canvas canvas, Size size) {



    Paint paint0 = Paint()
      ..color = const Color.fromARGB(255, 117, 170, 241)
      ..style = PaintingStyle.fill
      ..strokeWidth = 1.0;


    Path path0 = Path();
    path0.moveTo(size.width*0.4883800,size.height*0.1271400);
    path0.lineTo(size.width*0.3321000,size.height*0.3022000);
    path0.lineTo(size.width*0.2635200,size.height*0.2679600);
    path0.lineTo(size.width*0.4062200,size.height*0.1221600);
    path0.lineTo(size.width*0.4883800,size.height*0.1271400);
    path0.close();

    canvas.drawPath(path0, paint0);


    Paint paint1 = Paint()
      ..color = const Color.fromARGB(255, 5, 35, 89)
      ..style = PaintingStyle.fill
      ..strokeWidth = 1.0;


    Path path1 = Path();
    path1.moveTo(size.width*0.4002400,size.height*0.3297400);
    path1.lineTo(size.width*0.4451400,size.height*0.2839200);
    path1.lineTo(size.width*0.5215800,size.height*0.3067000);
    path1.lineTo(size.width*0.4658000,size.height*0.3540600);
    path1.lineTo(size.width*0.4002400,size.height*0.3297400);
    path1.close();

    canvas.drawPath(path1, paint1);


    Paint paint2 = Paint()
      ..color = const Color.fromARGB(255, 36, 104, 226)
      ..style = PaintingStyle.fill
      ..strokeWidth = 1.0;


    Path path2 = Path();
    path2.moveTo(size.width*0.3402200,size.height*0.3055200);
    path2.lineTo(size.width*0.4051200,size.height*0.2302000);
    path2.lineTo(size.width*0.4918400,size.height*0.2355400);
    path2.lineTo(size.width*0.4029000,size.height*0.3305400);
    path2.lineTo(size.width*0.3402200,size.height*0.3055200);
    path2.close();

    canvas.drawPath(path2, paint2);


  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }

}

