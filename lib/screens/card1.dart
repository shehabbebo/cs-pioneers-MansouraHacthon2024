import 'package:flutter/material.dart';

class CardPage1 extends StatelessWidget {
  static const String id = 'CardPage1';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.deepPurpleAccent,
        title: const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
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
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/space.jpg'), // ضع صورة خلفية فضائية
            fit: BoxFit.cover,
          ),
        ),
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            const Text(
              'مستويات التحدي',
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
                color: Colors.white,
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
        color: Colors.transparent,
        elevation: 5,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
          side: BorderSide(color: Colors.white.withOpacity(0.8), width: 2),
        ),
        child: Container(
          decoration: BoxDecoration(
            gradient: const LinearGradient(
              colors: [Colors.deepPurple, Colors.blueAccent],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
            borderRadius: BorderRadius.circular(20),
          ),
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
      ),
    );
  }
}

class LevelPage extends StatelessWidget {
  final int level;

  const LevelPage({super.key, required this.level});

  @override
  Widget build(BuildContext context) {
    final Map<int, Widget> content = {
      1: LevelOneGame(), // اللعبة الجديدة للمستوى الأول
      2: const Text('اكتشاف المجموعة الشمسية والكواكب...'),
      3: const Text('معلومات عن الثقوب السوداء وكيف تعمل...'),
    };

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurpleAccent,
        title: Text('المستوى $level'),
      ),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/space.jpg'), // خلفية فضائية
            fit: BoxFit.cover,
          ),
        ),
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'المستوى $level',
              style: const TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 20),
            Expanded(
              child: SingleChildScrollView(
                child: content[level] ??
                    const Text(
                      'المحتوى قيد الإعداد...',
                      style: TextStyle(fontSize: 18, color: Colors.white),
                    ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class LevelOneGame extends StatefulWidget {
  @override
  _LevelOneGameState createState() => _LevelOneGameState();
}

class _LevelOneGameState extends State<LevelOneGame> {
  String message = ''; // الرسالة التي ستظهر بعد التفاعل
  Color messageColor = Colors.white; // لون الرسالة
  int currentQuestionIndex = 0; // لتتبع السؤال الحالي
  bool isAnswered = false; // لتحديد إذا كانت الإجابة قد تم تحديدها
  bool isCorrectAnswer = false; // لمعرفة إذا كانت الإجابة صحيحة

  final List<Map<String, dynamic>> questions = [
    {
      "question": "حط كوكب المشتري جوه الدايرة",
      "correctAnswer": "correct",
      "wrongAnswer": "wrong",
      "correctImage": 'assets/71.png', // صورة الكوكب الصحيح
      "wrongImage": 'assets/70.png', // صورة الكوكب الخطأ
    },
    {
      "question": "حط كوكب المريخ جوه الدايرة",
      "correctAnswer": "correct",
      "wrongAnswer": "wrong",
      "correctImage": 'assets/68.png',
      "wrongImage": 'assets/69.png',
    },
    {
      "question": "حط كوكب الأرض جوه الدايرة",
      "correctAnswer": "correct",
      "wrongAnswer": "wrong",
      "correctImage": 'assets/67.png',
      "wrongImage": 'assets/68.png',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const SizedBox(height: 20),
        Text(
          questions[currentQuestionIndex]["question"],
          style: const TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: 20),
        Stack(
          alignment: Alignment.center,
          children: [
            // مدار الكوكب
            Container(
              width: 200,
              height: 200,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.white, width: 2),
                shape: BoxShape.circle,
              ),
            ),
            // منطقة الإفلات
            DragTarget<String>(
              onAccept: (data) {
                setState(() {
                  if (data ==
                      questions[currentQuestionIndex]["correctAnswer"]) {
                    message = "أحسنت! 🎉";
                    messageColor = Colors.green;
                    isCorrectAnswer = true;
                  } else {
                    message = "حاول مرة أخرى.";
                    messageColor = Colors.red;
                    isCorrectAnswer = false;
                  }
                  isAnswered = true; // تحديد أن الإجابة تم اختيارها
                });
              },
              builder: (context, candidateData, rejectedData) {
                return Container(
                  width: 120,
                  height: 120,
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.1),
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: Colors.white,
                      width: 2,
                    ),
                  ),
                  alignment: Alignment.center,
                  child: const Text(
                    "إفلات هنا",
                    style: TextStyle(color: Colors.white),
                  ),
                );
              },
            ),
          ],
        ),
        const SizedBox(height: 20),
        // الكوكبين بجانب بعضهما
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            // الكوكب الصحيح
            Draggable<String>(
              data: "correct",
              feedback:
                  _planetIcon(questions[currentQuestionIndex]["correctImage"]),
              childWhenDragging: Opacity(
                opacity: 0.5,
                child: _planetIcon(
                    questions[currentQuestionIndex]["correctImage"]),
              ),
              child:
                  _planetIcon(questions[currentQuestionIndex]["correctImage"]),
            ),
            // الكوكب الخاطئ
            Draggable<String>(
              data: "wrong",
              feedback:
                  _planetIcon(questions[currentQuestionIndex]["wrongImage"]),
              childWhenDragging: Opacity(
                opacity: 0.5,
                child:
                    _planetIcon(questions[currentQuestionIndex]["wrongImage"]),
              ),
              child: _planetIcon(questions[currentQuestionIndex]["wrongImage"]),
            ),
          ],
        ),
        const SizedBox(height: 20),
        // عرض الرسالة
        Text(
          message,
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: messageColor,
          ),
        ),
        const SizedBox(height: 20),
        // زر "استمر" عندما يجيب على السؤال
        if (isAnswered)
          ElevatedButton(
            onPressed: () {
              if (currentQuestionIndex + 1 < questions.length) {
                setState(() {
                  currentQuestionIndex++;
                  isAnswered = false;
                  message = '';
                  isCorrectAnswer = false;
                });
              } else {
                // العودة إلى صفحة المستويات
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>
                        LevelPage(level: 2), // الانتقال إلى المستوى التالي
                  ),
                );
              }
            },
            child: Text(currentQuestionIndex + 1 < questions.length
                ? 'استمر'
                : 'المستوي التالي'),
          ),
      ],
    );
  }

  // أيقونة الكوكب
  Widget _planetIcon(String imagePath) {
    return Container(
      width: 100,
      height: 100,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(imagePath),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}

//===================================//
 // تأكد من استيراد صفحة المستوى الثاني
