import 'package:final_project/screens/card2.dart';
import 'package:flutter/material.dart';
import 'package:final_project/screens/card1.dart';

class Homepage extends StatelessWidget {
  static String id = 'Homepage';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.lightBlue,
        title: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          Image.asset(
            'assets/66.png',
            height: 50,
            width: 50,
            fit: BoxFit.scaleDown,
          ),
          const Text(
            'الصفحة الرئيسية',
            style: TextStyle(
                color: Colors.white, fontSize: 24, fontWeight: FontWeight.bold),
          ),
        ]),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Text(
            'اختر مجال للتحدي اليوم',
            style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
                color: Colors.lightBlue),
          ),
          const SizedBox(height: 20), // مسافة بين العنوان والبطاقات
          _buildFullWidthCard(
            context,
            'عالم الفضاء',
            CardPage1.id,
          ),
          const SizedBox(height: 20), // مسافة بين البطاقتين
          _buildFullWidthCard(
            context,
            'تعلم البرمجة',
            CardPage2.id,
          ),
        ],
      ),
    );
  }

  Widget _buildFullWidthCard(
      BuildContext context, String cardName, String nextPageId) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, nextPageId);
      },
      child: Card(
        color: Colors.lightBlue,
        margin: const EdgeInsets.symmetric(horizontal: 20),
        child: Container(
          width: double.infinity, // يجعل الكارد يأخذ عرض الصفحة
          padding: const EdgeInsets.all(16),
          child: Center(
            child: Text(
              cardName,
              style: const TextStyle(
                fontSize: 20,
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
