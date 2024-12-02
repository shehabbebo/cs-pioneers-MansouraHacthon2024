import 'package:audioplayers/audioplayers.dart';
import 'package:final_project/screens/third.dart';
import 'package:flutter/material.dart';

class ScreenPage extends StatefulWidget {
  const ScreenPage({super.key});
  static String id = 'ScreenPage';

  @override
  State<ScreenPage> createState() => _ScreenPageState();
}

class _ScreenPageState extends State<ScreenPage> {
  final AudioPlayer _player = AudioPlayer();

  @override
  void dispose() {
    _player.dispose(); // تحرير الموارد
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.lightBlue,
        title: const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.hearing_disabled,
              size: 30,
              color: Colors.white,
            ),
            SizedBox(width: 10),
            Text(
              'تحديد اتجاه الصوت',
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        centerTitle: true,
      ),
      body: Container(
        color: Colors.white, // تغيير لون الخلفية
        child: Stack(
          children: [
            Center(
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // Buttons with text below
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Column(
                        children: [
                          _buildAudioRow('First Level', 'sound1.mp3',
                              'ملاحظة 1: جملة طويلة توضح هذا المستوى.'),
                          const SizedBox(height: 30),
                          _buildAudioRow('Second Level', 'sound2.mp3',
                              'ملاحظة 2: جملة أخرى جميلة هنا.'),
                          const SizedBox(height: 30),
                          _buildAudioRow('Third Level', 'sound3.mp3',
                              'ملاحظة 3: يمكنك إضافة المزيد من النصوص.'),
                          const SizedBox(height: 30),
                          _buildAudioRow('Fourth Level', 'sound4.mp3',
                              'ملاحظة 4: جمل طويلة تحتاج لمكان واسع.'),
                          const SizedBox(height: 30),
                          _buildAudioRow('Fifth Level', 'sound4.mp3',
                              'ملاحظة 5: هذا نص مثال آخر.'),
                          const SizedBox(height: 50),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            // زر Next في أسفل اليمين
            Positioned(
              bottom: 20,
              right: 20,
              child: ElevatedButton.icon(
                style: ElevatedButton.styleFrom(
                  minimumSize: const Size(100, 50),
                  backgroundColor: Colors.lightBlue,
                ),
                onPressed: () {
                  // التنقل إلى الشاشة التالية
                  Navigator.pushNamed(context,
                      ThirdPage.id); // قم بتغيير المسار وفقاً لشاشتك التالية
                },
                icon: const Icon(Icons.arrow_forward, color: Colors.white),
                label: const Text(
                  'Next',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildAudioRow(String label, String audioPath, String note) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        ElevatedButton.icon(
          style: ElevatedButton.styleFrom(
            minimumSize: const Size(200, 50),
            textStyle: const TextStyle(fontSize: 18),
          ),
          onPressed: () async {
            print("Trying to play audio from: $audioPath");
            try {
              await _player.play(AssetSource(audioPath));
            } catch (e) {
              print("Error playing audio: $e");
            }
          },
          label: Text(
            label,
            style: const TextStyle(
                fontWeight: FontWeight.bold, color: Colors.lightBlue),
          ),
          icon: const Icon(
            Icons.play_arrow_outlined,
            color: Colors.lightBlue,
          ),
        ),
        const SizedBox(height: 10),
        Text(
          note,
          style: const TextStyle(fontSize: 14, color: Colors.grey),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
