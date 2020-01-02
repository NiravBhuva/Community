import 'package:camera/camera.dart';
import 'package:community/screens/upload_screen.dart';
import 'package:flutter/material.dart';
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';

class CameraScreen extends StatefulWidget {
  @override
  _CameraScreenState createState() => _CameraScreenState();
}

class _CameraScreenState extends State<CameraScreen> {
  CameraController controller;
  List cameras;
  int selectedCameraIdx;
  String imagePath;

  @override
  void initState() {
    super.initState();
    // 1
    availableCameras().then((availableCameras) {

      cameras = availableCameras;
      if (cameras.length > 0) {
        setState(() {
          // 2
          selectedCameraIdx = 0;
        });

        _initCameraController(cameras[selectedCameraIdx]).then((void v) {});
      }else{
        print("No camera available");
      }
    }).catchError((err) {
      // 3
      print('Error: $err.code\nError Message: $err.message');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Expanded(
            child: _cameraPreviewWidget(),
          ),
          Container(
            height: 150,
            color: Colors.white,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                GestureDetector(
                  onTap: (){
                    Navigator.of(context).push(MaterialPageRoute(builder: (context)=>UploadScreen()));
                  },
                  child: Icon(
                    Icons.image,
                    size: 40,
                  ),
                ),
                SizedBox(width: 50),
                GestureDetector(
                  onTap: (){
                    _onCapturePressed(context);
                  },
                  child: Container(
                    height: 80,
                    width: 80,
                    decoration: BoxDecoration(
                      color: Color(0xffFEC867).withOpacity(0.4),
                      borderRadius: BorderRadius.all(Radius.circular(80)),
                    ),
                    child: Center(
                      child: Container(
                        height: 55,
                        width: 55,
                        decoration: BoxDecoration(
                          color: Color(0xffFEC867),
                          borderRadius: BorderRadius.all(Radius.circular(55)),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 50),
                GestureDetector(
                  onTap: (){
                    _onSwitchCamera();
                  },
                  child: Icon(
                    Icons.repeat_one,
                    size: 40,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  // 1, 2
  Future _initCameraController(CameraDescription cameraDescription) async {
    if (controller != null) {
      await controller.dispose();
    }

    // 3
    controller = CameraController(cameraDescription, ResolutionPreset.high);

    // If the controller is updated then update the UI.
    // 4
    controller.addListener(() {
      // 5
      if (mounted) {
        setState(() {});
      }

      if (controller.value.hasError) {
        print('Camera error ${controller.value.errorDescription}');
      }
    });

    // 6
    try {
      await controller.initialize();
    } on CameraException catch (e) {
      print(e);
    }

    if (mounted) {
      setState(() {});
    }
  }

  Widget _cameraPreviewWidget() {
    if (controller == null || !controller.value.isInitialized) {
      return const Text(
        'Loading',
        style: TextStyle(
          color: Colors.white,
          fontSize: 20.0,
          fontWeight: FontWeight.w900,
        ),
      );
    }

    return AspectRatio(
      aspectRatio: controller.value.aspectRatio,
      child: CameraPreview(controller),
    );
  }

  void _onCapturePressed(context) async {
    try {
      // 1
      final path = join(
        (await getTemporaryDirectory()).path,
        '${DateTime.now()}.png',
      );
      // 2
      await controller.takePicture(path);
    } catch (e) {
      print(e);
    }
  }

  void _onSwitchCamera() {
    selectedCameraIdx =
    selectedCameraIdx < cameras.length - 1 ? selectedCameraIdx + 1 : 0;
    CameraDescription selectedCamera = cameras[selectedCameraIdx];
    _initCameraController(selectedCamera);
  }
}
