import 'package:audio_book/audio_book15.dart';
import 'package:audio_book/audio_book17.dart';
import 'package:audio_book/audio_book19.dart';
import 'package:audio_book/audio_book20.dart';
import 'package:fancy_bottom_navigation_2/fancy_bottom_navigation.dart';
import 'package:flutter/material.dart';

class MyAudioBook18 extends StatefulWidget {
  const MyAudioBook18({super.key});

  @override
  State<MyAudioBook18> createState() => _MyAudioBook18State();
}

class _MyAudioBook18State extends State<MyAudioBook18> {
  bool set = true;
  bool set1 = true;
  bool set2 = true;
  bool set3 = true;
  bool set4 = false;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          leading: IconButton(
            onPressed: () {
              Navigator.of(context).pushReplacement(
                MaterialPageRoute(
                  builder: (context) => const MyAudioBook17(),
                ),
              );
            },
            icon: const Icon(
              Icons.arrow_back_ios,
              color: Colors.black,
            ),
          ),
          title: const Text(
            "Harry Potter and the Sorc...",
            style: TextStyle(color: Colors.black),
          ),
          centerTitle: true,
          actions: const [
            Icon(
              Icons.more_horiz,
              color: Colors.black,
              size: 24,
            ),
          SizedBox(width: 20),
          ],
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(left: 28, right: 28, top: 12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    elevation: 16,
                    shadowColor: const Color.fromARGB(255, 72, 56, 208),
                    child: Container(
                      height: 300,
                      width: 300,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        image: const DecorationImage(
                          image: AssetImage("assets/images/HarryPotter1.jpg"),
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                const Text(
                  "Harry Potter and the Prison...",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 4),
                const Text(
                  "J.K Rowling",
                  style: TextStyle(
                    color: Colors.blue,
                    fontSize: 14,
                  ),
                ),
                const SizedBox(height: 16),
                _iconRow(28, 20, true),
                const SizedBox(height: 8),
                Row(
                  children: [
                    _textBottom("Fantasy"),
                    const SizedBox(width: 8),
                    _textBottom("Drama"),
                    const SizedBox(width: 8),
                    _textBottom("Fiction"),
                  ],
                ),
                const SizedBox(height: 24),
                Row(
                  children: [
                    _textIconBottom(
                        Icons.play_circle_outline, true, "Play Audio",true),
                    const SizedBox(width: 16),
                    _textIconBottom(Icons.menu_book_sharp, false, "Read Book",false),
                  ],
                ),
                const SizedBox(height: 24),
                const Text(
                  "Summary",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 16),
                Text(
                  "Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. Velit officia consequat duis enim velit mollit. Exercitation veniam consequat sunt nostrud amet.\n\nMollit non deserunt ullamco est sit aliqua dolor do amet sint. Velit officia consequat duis enim velit mollit. Exercitation veniam consequat sunt.\n\nVelit officia consequat duis enim velit mollit. Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. Velit officia consequat duis enim velit mollit. Exercitation veniam consequat sunt nostrud amet.",
                  style: TextStyle(
                    color: Colors.grey.shade600,
                    fontSize: 14,
                  ),
                ),
                const SizedBox(height: 36),
                const Text(
                  "Review",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 16),
                Row(
                  children: [
                    Image.asset(
                      "assets/images/imag.png",
                      height: 60,
                      width: 60,
                    ),
                    const SizedBox(width: 16),
                    Column(
                      // mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Ronald Richards",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        _iconRow(16, 12, false),
                      ],
                    ),
                  ],
                ),
                const SizedBox(height: 24),
                const Text(
                  "Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. Exercitation veniam consequat sunt nostrud amet. Velit officia consequat duis enim velit mollit. \n\nAfter murdering Harry's parents, James and Lily Potter, evil Lord Voldemort puts a killing curse on Harry, then just a baby. The curse inexplicably reverses, defeating Voldemort and searing a lightning-bolt scar in the middle of the infant's forehead. Harry is then left at the doorstep of his boring but brutish aunt and uncle, the Dursleys.\n\nFor 10 years, Harry lives in the cupboard under the stairs and is subjected to cruel mistreatment by Aunt Petunia, Uncle Vernon and their son Dudley. On his 11th birthday, Harry receives a letter inviting him to study magic at the Hogwarts School of Witchcraft and Wizardry.\n\nHarry discovers that not only is he a wizard, but he is a famous one. He meets two best friends, Ron Weasley and Hermione Granger, and makes his first enemy, Draco Malfoy. At Hogwarts the three friends are all placed into the Gryffindor house. Harry has a knack for the school sport, Quidditch, and is recruited onto the Gryffindor team as its star Seeker.\n\nPerusing the restricted section in the library, Harry discovers that the Sorcerer's Stone produces the Elixir of Life, which gives its drinker the gift of immortality. After realizing that Voldemort might be after the stone, Albus Dumbledore had it moved it to Hogwarts for safekeeping.\n\nHarry finds out that when she died, Lily Potter transferred to her son an ancient magical protection from Voldemort's lethal spells. This protection is what allowed Harry as an infant to survive Voldemort's attack. It also helps Harry keep Voldemort from possessing the Stone, which Dumbledore agrees to destroy.",
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 14,
                  ),
                ),
              ],
            ),
          ),
        ),
        bottomNavigationBar: FancyBottomNavigation(
          textColor: Colors.white,
          inactiveIconColor: const Color.fromARGB(255, 247, 122, 85),
          barBackgroundColor: Colors.black,
          circleColor: const Color.fromARGB(255, 72, 56, 208),
          tabs: [
            TabData(iconData: Icons.home, title: "Home"),
            TabData(iconData: Icons.search, title: "Search"),
            TabData(iconData: Icons.library_books, title: "Library"),
          ],
          onTabChangedListener: (position) {
            setState(() {
              if (position == 1) {
                Navigator.of(context).pushReplacement(
                  MaterialPageRoute(
                    builder: (context) => const MyAudioBook17(),
                  ),
                );
              }
              if (position == 2) {
                Navigator.of(context).pushReplacement(
                  MaterialPageRoute(
                    builder: (context) => const MyAudioBook19(),
                  ),
                );
              }
            });
          },
        ),
      ),
    );
  }

  _imagGradian(String s, String t, String t2) {
    return SizedBox(
      height: 270,
      width: 180,
      child: Padding(
        padding: const EdgeInsets.all(8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 190,
              width: 170,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(4),
                image: DecorationImage(
                  image: AssetImage(s),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(height: 8),
            Text(
              t,
              style: const TextStyle(
                color: Colors.black,
                fontSize: 14,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 4),
            Text(
              t2,
              style: const TextStyle(
                color: Colors.blue,
                fontSize: 12,
              ),
            ),
          ],
        ),
      ),
    );
  }

  _iconRow(double size, double size1, bool lokol) {
    return Row(
      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        GestureDetector(
          onTap: () {
            setState(() {
              set = !set;
            });
          },
          child: Icon(
            set ? Icons.star : Icons.star_border,
            color: const Color.fromARGB(255, 247, 122, 85),
            size: size,
          ),
        ),
        const SizedBox(width: 6),
        GestureDetector(
          onTap: () {
            setState(() {
              set1 = !set1;
            });
          },
          child: Icon(
            set1 ? Icons.star : Icons.star_border,
            color: const Color.fromARGB(255, 247, 122, 85),
            size: size,
          ),
        ),
        const SizedBox(width: 6),
        GestureDetector(
          onTap: () {
            setState(() {
              set2 = !set2;
            });
          },
          child: Icon(
            set2 ? Icons.star : Icons.star_border,
            color: const Color.fromARGB(255, 247, 122, 85),
            size: size,
          ),
        ),
        const SizedBox(width: 6),
        GestureDetector(
          onTap: () {
            setState(() {
              set3 = !set3;
            });
          },
          child: Icon(
            set3 ? Icons.star : Icons.star_border,
            color: const Color.fromARGB(255, 247, 122, 85),
            size: size,
          ),
        ),
        const SizedBox(width: 6),
        GestureDetector(
          onTap: () {
            setState(() {
              set4 = !set4;
            });
          },
          child: Icon(
            set4 ? Icons.star : Icons.star_border,
            color: const Color.fromARGB(255, 247, 122, 85),
            size: size,
          ),
        ),
        const SizedBox(width: 12),
        lokol
            ? Text(
                "4.0",
                style: TextStyle(color: Colors.grey, fontSize: size1),
              )
            : Text(
                "2 days ago",
                style: TextStyle(color: Colors.grey, fontSize: size1),
              ),
      ],
    );
  }

  _textBottom(String s) {
    return TextButton(
      onPressed: () {},
      style: TextButton.styleFrom(
        backgroundColor: Colors.grey.shade100,
        foregroundColor: Colors.grey,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
          side: const BorderSide(
            color: Color.fromARGB(255, 54, 48, 109),
          ),
        ),
      ),
      child: Text(
        s,
        style: const TextStyle(
          color: Color.fromARGB(255, 54, 48, 109),
          fontSize: 14,
          fontWeight: FontWeight.w300,
        ),
      ),
    );
  }

  _textIconBottom(IconData isIcon, bool color, String tex,bool navigator) {
    return Expanded(
      child: ElevatedButton.icon(
        style: ElevatedButton.styleFrom(
          fixedSize: const Size(double.infinity, 60),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
          side: const BorderSide(
            color: Color.fromARGB(255, 72, 56, 208),
          ),
          backgroundColor:
              color ? const Color.fromARGB(255, 72, 56, 208) : Colors.white,
        ),
        onPressed: () {
          Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => navigator? const MyAudioBook20():const MyAudioBook18(),),);
        },
        icon: Icon(
          color ? isIcon : isIcon,
          color: color ? Colors.white : const Color.fromARGB(255, 72, 56, 208),
        ),
        label: Text(
          tex,
          style: TextStyle(
            color:
                color ? Colors.white : const Color.fromARGB(255, 72, 56, 208),
          ),
        ),
      ),
    );
  }
}
