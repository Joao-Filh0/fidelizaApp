import 'package:fideliza_app/shared/common/ui/src/widgets/fideliza_button.dart';
import 'package:flutter/material.dart';

void fidelizaDialog(BuildContext context) => showDialog(
    context: context, builder: (BuildContext context) => _CustomDialog());

class _CustomDialog extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      elevation: 0.0,
      backgroundColor: Colors.transparent,
      child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            shape: BoxShape.rectangle,
            borderRadius: BorderRadius.circular(8),
            boxShadow: const [
              BoxShadow(
                color: Colors.black26,
                blurRadius: 10.0,
                offset: Offset(0.0, 10.0),
              ),
            ],
          ),
          width: MediaQuery.of(context).size.width,
          padding: const EdgeInsets.all(24),
          child: Column(
            mainAxisSize: MainAxisSize.min, // To make the card compact
            children: <Widget>[
              const Text("Alert Dialog?"),
              const SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  FidelizaButton(
                    text: 'Allow',
                    onPressed: () {},
                  ),
                  const SizedBox(
                    width: 24,
                  ),
                  FidelizaButton(
                    borderPrimaryColor: true,
                    text: 'Deny',
                    isStroked: true,
                    onPressed: () {},
                  ),
                ],
              ),
              const SizedBox(height: 10),
            ],
          )),
    );
  }
}
