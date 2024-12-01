// import 'dart:ui';

// import 'package:audioplayers/audioplayers.dart';
// import 'package:final_project/screens/secondscreen.dart';
// import 'package:flutter/material.dart';

// class CardPage1 extends StatefulWidget {
//   const CardPage1({super.key, required this.num});
//   final String num;
//   static String id = 'CardPage1';

//   @override
//   State<CardPage1> createState() => _FirstLevelState();
// }

// class _FirstLevelState extends State<CardPage1> {
//   final AudioPlayer _player = AudioPlayer();

//   @override
//   void dispose() {
//     _player.dispose(); // تحرير الموارد
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         automaticallyImplyLeading: false,
//         backgroundColor: Colors.lightBlue,
//         title: const Row(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Icon(
//               Icons.hearing_disabled,
//               size: 30,
//               color: Colors.white,
//             ),
//             SizedBox(width: 10),
//             Text(
//               'الوعي بوجود صوت',
//               style: TextStyle(
//                 color: Colors.white,
//                 fontSize: 24,
//                 fontWeight: FontWeight.bold,
//               ),
//             ),
//           ],
//         ),
//         centerTitle: true,
//       ),
//       body: Container(
//         decoration: BoxDecoration(
//           color: Colors.white, // تغيير لون الخلفية
//         ),
//         child: Center(
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               // Buttons for audio levels
//               Column(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   _buildAudioButton('المستوي الاول', 'sound1.mp3'),
//                   const SizedBox(height: 40),
//                   _buildAudioButton('المستوي الثاني', 'sound4.mp3'),
//                   const SizedBox(height: 40),
//                   _buildAudioButton('المستوي الثالث', 'sound3.mp3'),
//                   const SizedBox(height: 40),
//                   _buildAudioButton('المستوي الرابع', 'sound2.mp3'),
//                 ],
//               ),
//               const SizedBox(height: 150),
//               Padding(
//                 padding: const EdgeInsets.only(
//                     right: 10.0, top: 90), // Right padding
//                 child: Align(
//                   alignment: Alignment.bottomRight,
//                   child: ElevatedButton.icon(
//                     style: ElevatedButton.styleFrom(
//                       minimumSize: const Size(100, 50),
//                       backgroundColor: Colors.lightBlue,
//                     ),
//                     onPressed: () {
//                       Navigator.pushNamed(
//                           context, ScreenPage.id); // تأكد من الاسم الصحيح
//                     },
//                     icon: const Icon(
//                       Icons.arrow_forward,
//                       color: Colors.white,
//                     ),
//                     label: const Text(
//                       'المرحله التالي',
//                       style: TextStyle(
//                           fontWeight: FontWeight.bold, color: Colors.white),
//                     ),
//                   ),
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }

//   Widget _buildAudioButton(String label, String audioPath) {
//     return ElevatedButton(
//       style: ElevatedButton.styleFrom(
//         minimumSize: const Size(200, 70), // زيادة الحجم
//         textStyle: const TextStyle(fontSize: 18), // تغيير حجم الخط
//         backgroundColor: Colors.lightBlue, // لون الزر
//       ),
//       onPressed: () async {
//         print("Trying to play audio from: $audioPath"); // تتبع المسار
//         try {
//           await _player.play(
//               AssetSource(audioPath)); // استخدم AssetSource مع اسم الملف فقط
//         } catch (e) {
//           print("Error playing audio: $e"); // إدارة الأخطاء
//         }
//       },
//       child: Text(
//         label,
//         style:
//             const TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';

class CardPage1 extends StatelessWidget {
  static const String id = 'CardPage1';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.lightBlue,
        title: const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Icon(
            //   Icons.hearing_disabled,
            //   size: 30,
            //   color: Colors.white,
            // ),
            SizedBox(width: 10),
            Text(
              'اختر مستواك',
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
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            const Text(
              'مستويات التحدي',
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
                color: Colors.lightBlue,
              ),
            ),
            const SizedBox(height: 20),
            Expanded(
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2, // عدد الأعمدة
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                ),
                itemCount: 10, // عدد المستويات
                itemBuilder: (context, index) {
                  final level = index + 1; // المستوى يبدأ من 1
                  return _buildLevelButton(
                    context,
                    'المستوى $level',
                    level,
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildLevelButton(BuildContext context, String label, int level) {
    return GestureDetector(
      onTap: () {
        // الانتقال إلى الصفحة عند الضغط
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => LevelPage(level: level), // نقل رقم المستوى
          ),
        );
      },
      child: Card(
        color: Colors.lightBlue,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        child: Center(
          child: Text(
            label,
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontSize: 18,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}

// صفحة المستوى
class LevelPage extends StatelessWidget {
  final int level;

  const LevelPage({super.key, required this.level});

  @override
  Widget build(BuildContext context) {
    final Map<int, Widget> content = {
      1: _buildLevelOneContent(), // محتوى المستوى الأول
      2: Text('اكتشاف المجموعة الشمسية والكواكب...'),
      3: Text('معلومات عن الثقوب السوداء وكيف تعمل...'),
      // بقية المستويات يمكن إضافتها هنا.
    };

    return Scaffold(
      appBar: AppBar(
        title: Text('المستوى $level'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'المستوى $level',
              style: const TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            const SizedBox(height: 20),
            Expanded(
              child: SingleChildScrollView(
                child: content[level] ??
                    const Text('المحتوى قيد الإعداد...',
                        style: TextStyle(fontSize: 18)),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildLevelOneContent() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'مرحبا بك في عالم الفضاء!',
          style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
              color: Colors.lightBlue),
        ),
        const SizedBox(height: 10),
        const Text(
          'الفضاء هو الامتداد اللامتناهي الذي يحيط بالأرض. إنه موطن النجوم، الكواكب، المجرات، وأسرار كثيرة ما زلنا نكتشفها يومًا بعد يوم.',
          style: TextStyle(fontSize: 18, height: 1.5),
        ),
        const SizedBox(height: 10),
        const Text(
          'معلومات شيقة:',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 5),
        const Text(
          '- يقدر عدد النجوم في مجرتنا (درب التبانة) بحوالي 100 مليار نجمة!\n'
          '- الشمس هي أكبر جسم في مجموعتنا الشمسية، وتزودنا بالضوء والطاقة.\n'
          '- الأرض ليست الكوكب الوحيد الذي يحتوي على الماء؛ يعتقد العلماء بوجود مياه على المريخ.\n'
          '- الكون يتوسع باستمرار منذ لحظة "الانفجار العظيم".',
          style: TextStyle(fontSize: 16, height: 1.5),
        ),
        const SizedBox(height: 20),
        Center(
          child: ElevatedButton(
            onPressed: () {
              print('مشاهدة فيديو تعريفي عن الفضاء');
              // أضف هنا منطق لتشغيل الفيديو إن أردت
            },
            child: const Text('مشاهدة فيديو تعريفي'),
          ),
        ),
      ],
    );
  }
}
