import 'package:flutter/material.dart';

final PageController _pageController = PageController();

class TutorialPage extends StatefulWidget {
  @override
  _TutorialPageState createState() => _TutorialPageState();
}

class _TutorialPageState extends State<TutorialPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tutorial'),
      ),
      body: PageView.builder(
        controller: _pageController,
        itemCount: 2,
        itemBuilder: (context, index) {
          switch (index) {
            case 0:
              return TutorialScreen1();
            case 1:
              return TutorialScreen2();
            default:
              throw Exception('something wrong on pagecontroller');
          }
        },
        physics: const AlwaysScrollableScrollPhysics(),
      ),
    );
  }
}

class TutorialScreen1 extends StatefulWidget {
  @override
  _TutorialScreen1State createState() => _TutorialScreen1State();
}

class _TutorialScreen1State extends State<TutorialScreen1> {
  double _textOffset = 0.0;
  double _buttonOffset = 0.0;

  @override
  void initState() {
    super.initState();
    _pageController.addListener(_updateOffsets);
  }

  @override
  void dispose() {
    _pageController.removeListener(_updateOffsets);
    super.dispose();
  }

  void _updateOffsets() {
    double pageOffset = _pageController.page ?? 0.0;
    double screenWidth = MediaQuery.of(context).size.width;
    setState(() {
      _textOffset = -(pageOffset * screenWidth * 0.5);
      _buttonOffset = -(pageOffset * screenWidth * 1.5);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Icon(
            Icons.add,
            size: 100,
          ),
          Transform.translate(
            offset: Offset(_textOffset, 0),
            child: const Text(
              'Welcome to the Expense Tracker!',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          const SizedBox(height: 16),
          Transform.translate(
            offset: Offset(_textOffset, 0),
            child: const Text(
              'Here, you can easily track your daily expenses.',
              textAlign: TextAlign.center,
            ),
          ),
          Transform.translate(
            offset: Offset(_buttonOffset, 0),
            child: ElevatedButton(
              onPressed: () {
                _pageController.nextPage(
                  duration: const Duration(milliseconds: 300),
                  curve: Curves.easeInOut,
                );
              },
              child: const Text('Next'),
            ),
          ),
        ],
      ),
    );
  }
}

class TutorialScreen2 extends StatefulWidget {
  @override
  _TutorialScreen2State createState() => _TutorialScreen2State();
}

class _TutorialScreen2State extends State<TutorialScreen2> {
  double _textOffset = 0.0;
  double _buttonOffset = 0.0;

  @override
  void initState() {
    super.initState();
    _pageController.addListener(_updateOffsets);
  }

  @override
  void dispose() {
    _pageController.removeListener(_updateOffsets);
    super.dispose();
  }

  void _updateOffsets() {
    double pageOffset = (_pageController.page)! - 1.0;
    double screenWidth = MediaQuery.of(context).size.width;
    setState(() {
      _textOffset = -(pageOffset * screenWidth * 0.5);
      _buttonOffset = -(pageOffset * screenWidth * 1.5);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Icon(
            Icons.add,
            size: 100,
          ),
          Transform.translate(
            offset: Offset(_textOffset, 0),
            child: const Text(
              'Easily manage your expenses!',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          const SizedBox(height: 16),
          Transform.translate(
            offset: Offset(_textOffset, 0),
            child: const Text(
              'Track your spending and stay on top of your finances.',
              textAlign: TextAlign.center,
            ),
          ),
          Transform.translate(
            offset: Offset(_buttonOffset, 0),
            child: ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('Done'),
            ),
          ),
        ],
      ),
    );
  }
}
