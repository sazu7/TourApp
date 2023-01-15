import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:shelter/ui/route/route.dart';
import 'package:shelter/ui/views/bottom_controller/bottom_nav_controller.dart';
import 'package:shelter/ui/widgets/violetButton.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

class privacypolicyScreen extends StatelessWidget {


  PdfViewerController? _pdfViewerController;
  RxBool _loaded = false.obs;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding:  EdgeInsets.only(left: 30.w, right: 30.w, top: 20.h),
          child: Column(
            children: [
              Expanded(
                child: SfPdfViewer.network(
                  'https://firebasestorage.googleapis.com/v0/b/shelter-80d20.appspot.com/o/privacy%20policy%2FAmar%20Chhotobela.pdf?alt=media&token=a120039c-d20e-48f5-b8c5-b0225f5d155e',
                  onDocumentLoaded: (PdfDocumentLoadedDetails details) {
                    _loaded.value = true;
                  },
                ),
              ),
              Obx(
                () => _loaded == true
                    ? violetButton(
                        "Agree",
                        () => Get.toNamed(mainhomescreen),
                      )
                    : Text('Still Loading'),
              ),
              SizedBox(
                height: 10.h,
              ),
            ],
          ),
        ),
      ),
    );
  }
}