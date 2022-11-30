// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const DowloadButton(
        status: DownloadStatus.downloaded,
        transitionDuration: Duration(),
      ),
    );
  }
}

class DowloadButton extends StatefulWidget {
  const DowloadButton(
      {Key? key,
      required this.status,
      this.transitionDuration = const Duration(milliseconds: 200)})
      : super(key: key);

  final DownloadStatus status;
  final Duration transitionDuration;

  @override
  State<DowloadButton> createState() => _DowloadButtonState();
}

class _DowloadButtonState extends State<DowloadButton> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold();
  }
}

enum DownloadStatus {
  notDownloaded,
  fetchingDownload,
  downloading,
  downloaded,
}
