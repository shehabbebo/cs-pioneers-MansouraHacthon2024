// import 'package:flutter/material.dart';

// class CardPage2 extends StatelessWidget {
//   final String num;
//   static String id = 'CardPage2';
//   const CardPage2({required this.num});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Card $num Page'),
//         backgroundColor: Colors.lightBlue,
//       ),
//       body: Center(
//         child: Text('This is the page for Card $num',
//             style: TextStyle(fontSize: 24)),
//       ),
//     );
//   }
// }

// import 'package:audioplayers/audioplayers.dart';
// //import 'package:final_project/screen/first_level.dart';
// import 'package:final_project/screens/card1.dart';
// import 'package:flutter/material.dart';

// class SecondSreen extends StatelessWidget {
//   const SecondSreen({super.key});
//   static String id = 'CardPage1';
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         leading: IconButton(
//             onPressed: () {
//               // Navigator.pop(
//               //   context,
//               //   MaterialPageRoute(builder: (context) => FirstLevel()),
//               Navigator.pushNamed(context, CardPage1.id);
//             },
//             icon: const Icon(Icons.arrow_back)),
//         automaticallyImplyLeading: false,
//         backgroundColor: Colors.lightBlue,
//         title: const Row(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Icon(
//               Icons.hearing_disabled,
//               size: 30,
//             ),
//             SizedBox(
//               width: 10,
//             ),
//             Text(
//               'Home Page',
//               style: TextStyle(
//                 color: Colors.white,
//                 fontSize: 24,
//                 fontWeight: FontWeight.bold,
//               ),
//             )
//           ],
//         ),
//         centerTitle: true,
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//               children: [
//                 ElevatedButton.icon(
//                   style: ElevatedButton.styleFrom(
//                       minimumSize: const Size(200, 50)),
//                   onPressed: () async {
//                     final player = AudioPlayer();
//                     await player.play(UrlSource('assets/sound/sound1.mp3'));
//                   },
//                   label: const Text(
//                     'First level',
//                     style: TextStyle(fontWeight: FontWeight.bold),
//                   ),
//                   icon: const Icon(Icons.play_arrow_outlined),
//                 ),
//                 const SizedBox(
//                   height: 30,
//                 ),
//                 ElevatedButton.icon(
//                   style: ElevatedButton.styleFrom(
//                       minimumSize: const Size(200, 50)),
//                   onPressed: () async {
//                     final player = AudioPlayer();
//                     await player.play(UrlSource('assets/sound/sound2.mp3'));
//                   },
//                   label: const Text(
//                     'Second level',
//                     style: TextStyle(fontWeight: FontWeight.bold),
//                   ),
//                   icon: const Icon(Icons.play_arrow_outlined),
//                 ),
//               ],
//             ),
//             const SizedBox(height: 200),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//               children: [
//                 ElevatedButton.icon(
//                   style: ElevatedButton.styleFrom(
//                       minimumSize: const Size(200, 50)),
//                   onPressed: () async {
//                     final player = AudioPlayer();
//                     await player.play(UrlSource('assets/sound/sound3.mp3'));
//                   },
//                   label: const Text(
//                     'Third level',
//                     style: TextStyle(fontWeight: FontWeight.bold),
//                   ),
//                   icon: const Icon(Icons.play_arrow_outlined),
//                 ),
//                 const SizedBox(
//                   height: 30,
//                 ),
//                 ElevatedButton.icon(
//                   style: ElevatedButton.styleFrom(
//                       minimumSize: const Size(200, 50)),
//                   onPressed: () async {
//                     final player = AudioPlayer();
//                     await player.play(UrlSource('assets/sound/sound4.mp3'));
//                   },
//                   label: const Text(
//                     'Forth level',
//                     style: TextStyle(fontWeight: FontWeight.bold),
//                   ),
//                   icon: const Icon(Icons.play_arrow_outlined),
//                 ),
//               ],
//             ),
//             const SizedBox(height: 100),
//             ElevatedButton.icon(
//               style: ElevatedButton.styleFrom(minimumSize: Size(100, 50)),
//               onPressed: () {
//                 Navigator.push(
//                   context,
//                   MaterialPageRoute(builder: (context) => const SecondSreen()),
//                 );
//               },
//               icon: const Icon(Icons.next_plan_outlined),
//               label: const Text(
//                 'Next',
//                 style: TextStyle(fontWeight: FontWeight.bold),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

// import 'package:audioplayers/audioplayers.dart';
// import 'package:final_project/screens/card1.dart';
// import 'package:flutter/material.dart';

// class SecondSreen extends StatelessWidget {
//   const SecondSreen({super.key});
//   static String id = 'SecondScreen'; // تأكد من أن الاسم صحيح

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         leading: IconButton(
//           onPressed: () {
//             Navigator.pushNamed(context, CardPage1.id);
//           },
//           icon: const Icon(Icons.arrow_back),
//         ),
//         automaticallyImplyLeading: false,
//         backgroundColor: Colors.lightBlue,
//         title: const Row(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Icon(
//               Icons.hearing_disabled,
//               size: 30,
//             ),
//             SizedBox(width: 10),
//             Text(
//               'Home Page',
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
//       body: Padding(
//         padding: const EdgeInsets.all(16.0), // إضافة هوامش
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             // استخدام Expanded لتحقيق توزيع جيد للأزرار
//             Expanded(
//               child: Column(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                     children: [
//                       ElevatedButton.icon(
//                         style: ElevatedButton.styleFrom(
//                             minimumSize: const Size(150, 50)),
//                         onPressed: () async {
//                           final player = AudioPlayer();
//                           await player.play(UrlSource('assets/sound1.mp3'));
//                         },
//                         label: const Text(
//                           'First level',
//                           style: TextStyle(fontWeight: FontWeight.bold),
//                         ),
//                         icon: const Icon(Icons.play_arrow_outlined),
//                       ),
//                       ElevatedButton.icon(
//                         style: ElevatedButton.styleFrom(
//                             minimumSize: const Size(150, 50)),
//                         onPressed: () async {
//                           final player = AudioPlayer();
//                           await player.play(UrlSource('assets/sound1.mp3'));
//                         },
//                         label: const Text(
//                           'Second level',
//                           style: TextStyle(fontWeight: FontWeight.bold),
//                         ),
//                         icon: const Icon(Icons.play_arrow_outlined),
//                       ),
//                     ],
//                   ),
//                   const SizedBox(height: 20), // إضافة مسافة بين الصفوف
//                   Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                     children: [
//                       ElevatedButton.icon(
//                         style: ElevatedButton.styleFrom(
//                             minimumSize: const Size(150, 50)),
//                         onPressed: () async {
//                           final player = AudioPlayer();
//                           await player.play(UrlSource('assets/sound1.mp3'));
//                         },
//                         label: const Text(
//                           'Third level',
//                           style: TextStyle(fontWeight: FontWeight.bold),
//                         ),
//                         icon: const Icon(Icons.play_arrow_outlined),
//                       ),
//                       ElevatedButton.icon(
//                         style: ElevatedButton.styleFrom(
//                             minimumSize: const Size(150, 50)),
//                         onPressed: () async {
//                           final player = AudioPlayer();
//                           await player.play(UrlSource('assets/sound1.mp3'));
//                         },
//                         label: const Text(
//                           'Fourth level',
//                           style: TextStyle(fontWeight: FontWeight.bold),
//                         ),
//                         icon: const Icon(Icons.play_arrow_outlined),
//                       ),
//                     ],
//                   ),
//                 ],
//               ),
//             ),
//             // زر "Next" في الأسفل على اليمين
//             Align(
//               alignment: Alignment.bottomRight,
//               child: ElevatedButton.icon(
//                 style:
//                     ElevatedButton.styleFrom(minimumSize: const Size(100, 50)),
//                 onPressed: () {
//                   // قم بتوجيهه إلى الشاشة التالية هنا إذا لزم الأمر
//                 },
//                 icon: const Icon(Icons.next_plan_outlined),
//                 label: const Text(
//                   'Next',
//                   style: TextStyle(fontWeight: FontWeight.bold),
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

// import 'package:audioplayers/audioplayers.dart';
// //import 'package:final_project/screen/first_level.dart';
// import 'package:final_project/screens/homepage.dart';
// import 'package:flutter/material.dart';

// class SecondSreen extends StatelessWidget {
//   const SecondSreen({super.key});
//   static String id = 'SecondSreen';
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         leading: IconButton(
//             onPressed: () {
//               Navigator.pushNamed(context, Homepage.id);
//             },
//             icon: const Icon(Icons.arrow_back)),
//         automaticallyImplyLeading: false,
//         backgroundColor: Colors.lightBlue,
//         title: const Row(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Icon(
//               Icons.hearing_disabled,
//               size: 30,
//             ),
//             SizedBox(
//               width: 10,
//             ),
//             Text(
//               'Home Page',
//               style: TextStyle(
//                 color: Colors.white,
//                 fontSize: 24,
//                 fontWeight: FontWeight.bold,
//               ),
//             )
//           ],
//         ),
//         centerTitle: true,
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//               children: [
//                 ElevatedButton.icon(
//                   style: ElevatedButton.styleFrom(
//                       minimumSize: const Size(200, 50)),
//                   onPressed: () async {
//                     final player = AudioPlayer();
//                     await player.play(UrlSource('assets/sound1.mp3'));
//                   },
//                   label: const Text(
//                     'First level',
//                     style: TextStyle(fontWeight: FontWeight.bold),
//                   ),
//                   icon: const Icon(Icons.play_arrow_outlined),
//                 ),
//                 const SizedBox(
//                   height: 30,
//                 ),
//                 ElevatedButton.icon(
//                   style: ElevatedButton.styleFrom(
//                       minimumSize: const Size(200, 50)),
//                   onPressed: () async {
//                     final player = AudioPlayer();
//                     await player.play(UrlSource('assets/sound2.mp3'));
//                   },
//                   label: const Text(
//                     'Second level',
//                     style: TextStyle(fontWeight: FontWeight.bold),
//                   ),
//                   icon: const Icon(Icons.play_arrow_outlined),
//                 ),
//               ],
//             ),
//             const SizedBox(height: 200),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//               children: [
//                 ElevatedButton.icon(
//                   style: ElevatedButton.styleFrom(
//                       minimumSize: const Size(200, 50)),
//                   onPressed: () async {
//                     final player = AudioPlayer();
//                     await player.play(UrlSource('assets/sound3.mp3'));
//                   },
//                   label: const Text(
//                     'Third level',
//                     style: TextStyle(fontWeight: FontWeight.bold),
//                   ),
//                   icon: const Icon(Icons.play_arrow_outlined),
//                 ),
//                 const SizedBox(
//                   height: 30,
//                 ),
//                 ElevatedButton.icon(
//                   style: ElevatedButton.styleFrom(
//                       minimumSize: const Size(200, 50)),
//                   onPressed: () async {
//                     final player = AudioPlayer();
//                     await player.play(UrlSource('assets/sound4.mp3'));
//                   },
//                   label: const Text(
//                     'Forth level',
//                     style: TextStyle(fontWeight: FontWeight.bold),
//                   ),
//                   icon: const Icon(Icons.play_arrow_outlined),
//                 ),
//               ],
//             ),
//             const SizedBox(height: 100),
//             ElevatedButton.icon(
//               style: ElevatedButton.styleFrom(minimumSize: Size(100, 50)),
//               onPressed: () {
//                 Navigator.push(
//                   context,
//                   MaterialPageRoute(builder: (context) => const SecondSreen()),
//                 );
//               },
//               icon: const Icon(Icons.next_plan_outlined),
//               label: const Text(
//                 'Next',
//                 style: TextStyle(fontWeight: FontWeight.bold),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

// import 'package:audioplayers/audioplayers.dart';
// import 'package:flutter/material.dart';

// class ScreenPage extends StatefulWidget {
//   const ScreenPage({super.key});
//   static String id = 'ScreenPage';

//   @override
//   State<ScreenPage> createState() => _ScreenPageState();
// }

// class _ScreenPageState extends State<ScreenPage> {
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
//               'تحديد اتجاه الصوت',
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
//           child: SingleChildScrollView(
//             // يسمح بالتمرير إذا كانت النصوص طويلة
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 // Grid for audio levels
//                 Padding(
//                   padding: const EdgeInsets.all(15.0),
//                   child: GridView.count(
//                     crossAxisCount: 1,
//                     shrinkWrap: true,
//                     physics: const NeverScrollableScrollPhysics(),
//                     children: [
//                       _buildAudioCard('First Level', 'sound1.mp3',
//                           'ملاحظة 1: جملة طويلة توضح هذا المستوى.'),
//                       _buildAudioCard('Second Level', 'sound2.mp3',
//                           'ملاحظة 2: جملة أخرى جميلة هنا.'),
//                       _buildAudioCard('Third Level', 'sound3.mp3',
//                           'ملاحظة 3: يمكنك إضافة المزيد من النصوص.'),
//                       _buildAudioCard('Fourth Level', 'sound4.mp3',
//                           'ملاحظة 4: جمل طويلة تحتاج لمكان واسع.'),
//                       _buildAudioCard('Fifth Level', 'sound4.mp3',
//                           'ملاحظة 5: هذا نص مثال آخر.'),
//                       _buildAudioCard('Sixth Level', 'sound4.mp3',
//                           'ملاحظة 6: تأكد من عرض النصوص بالكامل.'),
//                     ],
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }

//   Widget _buildAudioCard(String label, String audioPath, String note) {
//     return Card(
//       elevation: 5,
//       margin: const EdgeInsets.all(20),
//       child: Padding(
//         padding: const EdgeInsets.all(20.0), // زيادة padding
//         child: Column(
//           mainAxisSize: MainAxisSize.min, // يسمح للبطاقة بالتمدد
//           children: [
//             ElevatedButton.icon(
//               style: ElevatedButton.styleFrom(
//                 minimumSize: const Size(200, 90),
//                 textStyle: const TextStyle(fontSize: 18),
//               ),
//               onPressed: () async {
//                 print("Trying to play audio from: $audioPath");
//                 try {
//                   await _player.play(AssetSource(audioPath));
//                 } catch (e) {
//                   print("Error playing audio: $e");
//                 }
//               },
//               label: Text(
//                 label,
//                 style: const TextStyle(fontWeight: FontWeight.bold),
//               ),
//               icon: const Icon(Icons.play_arrow_outlined),
//             ),
//             const SizedBox(height: 40),
//             Text(
//               note,
//               style: const TextStyle(fontSize: 14, color: Colors.grey),
//               textAlign: TextAlign.center, // محاذاة النص في الوسط
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

// import 'package:audioplayers/audioplayers.dart';
// import 'package:flutter/material.dart';

// class ScreenPage extends StatefulWidget {
//   const ScreenPage({super.key});
//   static String id = 'ScreenPage';

//   @override
//   State<ScreenPage> createState() => _ScreenPageState();
// }

// class _ScreenPageState extends State<ScreenPage> {
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
//               'تحديد اتجاه الصوت',
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
//         color: Colors.white, // تغيير لون الخلفية
//         child: Center(
//           child: SingleChildScrollView(
//             // يسمح بالتمرير إذا كانت النصوص طويلة
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 // Buttons with text below
//                 Padding(
//                   padding: const EdgeInsets.all(15.0),
//                   child: Column(
//                     children: [
//                       _buildAudioRow('First Level', 'sound1.mp3',
//                           'ملاحظة 1: جملة طويلة توضح هذا المستوى.'),
//                       const SizedBox(height: 30),
//                       _buildAudioRow('Second Level', 'sound2.mp3',
//                           'ملاحظة 2: جملة أخرى جميلة هنا.'),
//                       const SizedBox(height: 30),
//                       _buildAudioRow('Third Level', 'sound3.mp3',
//                           'ملاحظة 3: يمكنك إضافة المزيد من النصوص.'),
//                       const SizedBox(height: 30),
//                       _buildAudioRow('Fourth Level', 'sound4.mp3',
//                           'ملاحظة 4: جمل طويلة تحتاج لمكان واسع.'),
//                       const SizedBox(height: 30),
//                       _buildAudioRow('Fifth Level', 'sound4.mp3',
//                           'ملاحظة 5: هذا نص مثال آخر.'),
//                       const SizedBox(height: 30),
//                       _buildAudioRow('Sixth Level', 'sound4.mp3',
//                           'ملاحظة 6: تأكد من عرض النصوص بالكامل.'),
//                     ],
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }

//   Widget _buildAudioRow(String label, String audioPath, String note) {
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.center,
//       children: [
//         ElevatedButton.icon(
//           style: ElevatedButton.styleFrom(
//             minimumSize: const Size(200, 50),
//             textStyle: const TextStyle(fontSize: 18),
//           ),
//           onPressed: () async {
//             print("Trying to play audio from: $audioPath");
//             try {
//               await _player.play(AssetSource(audioPath));
//             } catch (e) {
//               print("Error playing audio: $e");
//             }
//           },
//           label: Text(
//             label,
//             style: const TextStyle(fontWeight: FontWeight.bold),
//           ),
//           icon: const Icon(Icons.play_arrow_outlined),
//         ),
//         const SizedBox(height: 10),
//         Text(
//           note,
//           style: const TextStyle(fontSize: 14, color: Colors.grey),
//           textAlign: TextAlign.center,
//         ),
//       ],
//     );
//   }
// }
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
