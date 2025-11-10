// ignore_for_file: unnecessary_getters_setters, file_names

import 'dart:async';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

import '/shared/utils/helper/snack_bars.dart';
import 'image_compressor.dart';

class PickImage {
  final ImagePicker _picker = ImagePicker();
  final StreamController _imageStreamController = StreamController.broadcast();

  Stream get imageStream => _imageStreamController.stream;

  StreamSink get _sink => _imageStreamController.sink;
  StreamSubscription? subscription;
  File? _pickedFile;

  File? get pickedFile => _pickedFile;

  set pickedFile(File? pickedFile) {
    _pickedFile = pickedFile;
  }

  Future<void> pick({
    ImageSource? source,
    bool? pickMultiple,
    int? imageLimit,
    int? maxLength,
    int? imageQuality = 50,
    required BuildContext context,
    int? requiredFileSizeInBytes = 500,
  }) async {
    try {
      if (pickMultiple == false || pickMultiple == null) {
        final XFile? pickedFile = await _picker.pickImage(
          source: source ?? ImageSource.gallery,
          imageQuality: imageQuality!,
          preferredCameraDevice: CameraDevice.rear,
        );
        if (pickedFile != null) {
          File file = File(pickedFile.path);

          file = await ImageCompressor.compressImageFile(file);

          _sink.add({
            "error": "",
            "file": [file], // Wrapped in a list for consistency
          });
        }
      } else {
        List<XFile> list = await _picker.pickMultiImage(
          imageQuality: imageQuality!,
          requestFullMetadata: true,
        );

        if (imageLimit != null &&
            maxLength != null &&
            (list.length + maxLength) > imageLimit) {
          AppSnackBar.showSnackBarMessage(
            context,
            'You can select maximum $imageLimit images',
          );
          return;
        } else {
          Iterable<Future<File>> result = list.map((image) async {
            File myImage = File(image.path);
            if (await myImage.length() > requiredFileSizeInBytes!) {
              myImage = await ImageCompressor.compressImageFile(myImage);
            } else {
              myImage = File(image.path);
            }
            return myImage;
          });
          List<File> templistFile = [];
          await for (Future<File> futureFile in Stream.fromIterable(result)) {
            File file = await futureFile;
            templistFile.add(file);
          }

          _sink.add({"error": "", "file": templistFile});
        }
      }
    } catch (error) {
      _sink.add({"error": error.toString(), "file": []});
    }
  }

  /// This widget will listen changes in ui, it is wrapper around Stream builder
  Widget listenChangesInUI(
    dynamic Function(BuildContext context, List<File>? images) ondata,
  ) {
    return StreamBuilder(
      stream: imageStream,
      builder: ((context, AsyncSnapshot snapshot) {
        if (snapshot.hasData &&
            snapshot.connectionState == ConnectionState.active) {
          List<File>? files;
          if (snapshot.data['file'] is List) {
            files = (snapshot.data['file'] as List).cast<File>();
          } else if (snapshot.data['file'] is File) {
            files = [snapshot.data['file'] as File];
          }

          pickedFile = files?.isNotEmpty == true ? files![0] : null;

          return ondata.call(context, files);
        }

        if (snapshot.connectionState == ConnectionState.waiting) {
          return ondata.call(context, null);
        }
        return ondata.call(context, null);
      }),
    );
  }

  void listener(void Function(dynamic)? onData) {
    subscription = imageStream.listen((data) {
      if ((subscription?.isPaused == false)) {
        onData?.call(data['file']);
      }
    });
  }

  void pauseSubscription() {
    subscription?.pause();
  }

  void resumeSubscription() {
    subscription?.resume();
  }

  void clearImage() {
    pickedFile = null;
    _sink.add({"file": []});
  }

  void dispose() {
    if (!_imageStreamController.isClosed) {
      _imageStreamController.close();
    }
  }
}

enum PickImageStatus { initial, waiting, done, error }
