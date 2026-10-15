import 'package:flutter/material.dart';
import 'package:flutter_sound/flutter_sound.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:path_provider/path_provider.dart';
import 'dart0io';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const RealVoiceChangerApp());
}

class RealVoiceChangerApp extends StatelessWidget {
  const RealVoiceChangerApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'مغير الصوت الحقيقي',
      theme: ThemeData(
        brightness: Brightness.dark,
        primarySwatch: Colors.pink,
        scaffoldBackgroundColor: const Color(0xFF0F172A),
        cardColor: const Color(0xFF1E293B),
      ),
      home: const VoiceStudioScreen(),
    );
  }
}

class VoiceStudioScreen extends StatefulWidget {
  const VoiceStudioScreen({Key? key}) : super(key: key);

  @override
  State<VoiceStudioScreen> createState() => _VoiceStudioScreenState();
}

class _VoiceStudioScreenState extends State<VoiceStudioScreen> {
  FlutterSoundRecorder? _recorder;
  FlutterSoundPlayer? _player;
  
  bool _isRecorderInitialized = false;
  bool _isRecording
