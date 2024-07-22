import 'package:flutter/material.dart';

class AuthorBook extends StatefulWidget {
  const AuthorBook({Key? key}) : super(key: key);

  @override
  _AuthorBookState createState() => _AuthorBookState();
}

class _AuthorBookState extends State<AuthorBook> {
  int _rating = 0; // Variable untuk menyimpan rating
  TextEditingController _commentController = TextEditingController(); // Controller untuk input komentar
  ScrollController _scrollController = ScrollController(); // Controller untuk scroll

  @override
  void dispose() {
    _commentController.dispose();
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      controller: _scrollController,
      child: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    image: DecorationImage(
                      image: AssetImage("images/pidibaiq.png"),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 10),
                  child: Text(
                    "Pidi Baiq",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            TextButton(
              onPressed: () {
                Navigator.pushNamed(context, "p2");
              },
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(Colors.black),
                foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
                fixedSize: MaterialStateProperty.all<Size>(Size(300, 50)),
              ),
              child: Text("Borrow Now"),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Rating bintang
                for (int i = 1; i <= 5; i++)
                  InkWell(
                    onTap: () {
                      setState(() {
                        _rating = i;
                      });
                    },
                    onHover: (hovering) {
                      // Optionally, you can handle hover effect here
                    },
                    child: Icon(
                      i <= _rating ? Icons.star : Icons.star_border,
                      color: Colors.yellow,
                    ),
                  ),
              ],
            ),
            SizedBox(height: 20),
            // Kolom komentar
            Container(
              width: 300,
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.white),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Comments",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(height: 10),
                  // Input komentar
                  TextField(
                    controller: _commentController,
                    style: TextStyle(color: Colors.white),
                    maxLines: 3,
                    decoration: InputDecoration(
                      hintText: 'Write your comment...',
                      hintStyle: TextStyle(color: Colors.white70),
                      border: InputBorder.none,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10),
            // Tombol Kirim
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                ElevatedButton(
                  onPressed: () {
                    // Handle sending comment action
                    if (_commentController.text.isNotEmpty) {
                      // Implement sending logic here (e.g., API call)
                      // For demo purpose, we just print the comment
                      print("Comment sent: ${_commentController.text}");
                      // Clear input field after sending
                      _commentController.clear();
                    }
                  },
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(Colors.black),
                    foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
                  ),
                  child: Text("Kirim"),
                ),
              ],
            ),
            SizedBox(height: 20),
            // Daftar komentar
            // Contoh komentar statis (untuk demonstrasi)
            Container(
              width: 300,
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.white),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Text(
                _commentController.text.isEmpty
                    ? "Type your comment above."
                    : _commentController.text,
                style: TextStyle(color: Colors.white),
              ),
            ),
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
