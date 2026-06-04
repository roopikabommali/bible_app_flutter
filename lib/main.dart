import 'package:flutter/material.dart';

void main() {
  runApp(const BibleApp());
}

// ─────────────────────────────────────────
// APP ROOT
// ─────────────────────────────────────────
class BibleApp extends StatelessWidget {
  const BibleApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Daily Word',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFFD4AF37),
          brightness: Brightness.dark,
        ),
        useMaterial3: true,
      ),
      home: const HomePage(),
    );
  }
}

// ─────────────────────────────────────────
// PAGE 1: HOME PAGE
// ─────────────────────────────────────────
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xFF1A0533), Color(0xFF2D1B5E), Color(0xFF1A0533)],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: SafeArea(
          child: Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 32.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    padding: const EdgeInsets.all(24),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      boxShadow: [
                        BoxShadow(
                          color: const Color(0xFFD4AF37).withOpacity(0.3),
                          blurRadius: 40,
                          spreadRadius: 10,
                        ),
                      ],
                    ),
                    child: const Icon(
                      Icons.menu_book_rounded,
                      size: 80,
                      color: Color(0xFFD4AF37),
                    ),
                  ),
                  const SizedBox(height: 24),
                  const Text(
                    'Daily Word',
                    style: TextStyle(
                      fontSize: 42,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFFD4AF37),
                      letterSpacing: 3,
                    ),
                  ),
                  const SizedBox(height: 12),
                  const Text(
                    '"Your word is a lamp to my feet\nand a light to my path."',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.white70,
                      fontStyle: FontStyle.italic,
                      height: 1.8,
                    ),
                  ),
                  const SizedBox(height: 4),
                  const Text(
                    '— Psalm 119:105',
                    style: TextStyle(
                      fontSize: 12,
                      color: Color(0xFFD4AF37),
                      letterSpacing: 1,
                    ),
                  ),
                  const SizedBox(height: 60),
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton.icon(
                      onPressed: () => Navigator.push(
                        context,
                        MaterialPageRoute(builder: (_) => const BooksPage()),
                      ),
                      icon: const Icon(Icons.book_rounded),
                      label: const Text(
                        'Start Reading',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 1.5,
                        ),
                      ),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFFD4AF37),
                        foregroundColor: const Color(0xFF1A0533),
                        padding: const EdgeInsets.symmetric(vertical: 16),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                        elevation: 8,
                        shadowColor: const Color(0xFFD4AF37).withOpacity(0.5),
                      ),
                    ),
                  ),
                  const SizedBox(height: 16),
                  SizedBox(
                    width: double.infinity,
                    child: OutlinedButton.icon(
                      onPressed: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (_) => const DevotionalPage()),
                      ),
                      icon: const Icon(Icons.self_improvement_rounded),
                      label: const Text(
                        'Daily Devotional',
                        style: TextStyle(fontSize: 16, letterSpacing: 1),
                      ),
                      style: OutlinedButton.styleFrom(
                        foregroundColor: Colors.white,
                        side: const BorderSide(
                            color: Color(0xFFD4AF37), width: 1.5),
                        padding: const EdgeInsets.symmetric(vertical: 16),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 48),
                  Text(
                    'v1.0  •  Holy Bible',
                    style: TextStyle(
                      fontSize: 11,
                      color: Colors.white.withOpacity(0.3),
                      letterSpacing: 1.5,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

// ─────────────────────────────────────────
// PAGE 2: BOOKS PAGE
// ─────────────────────────────────────────
class BooksPage extends StatefulWidget {
  const BooksPage({super.key});

  @override
  State<BooksPage> createState() => _BooksPageState();
}

class _BooksPageState extends State<BooksPage> {
  String _selectedTestament = 'Old Testament';

  final List<Map<String, dynamic>> _oldTestament = [
    {'name': 'Genesis', 'chapters': 50, 'abbr': 'Gen'},
    {'name': 'Exodus', 'chapters': 40, 'abbr': 'Ex'},
    {'name': 'Leviticus', 'chapters': 27, 'abbr': 'Lev'},
    {'name': 'Numbers', 'chapters': 36, 'abbr': 'Num'},
    {'name': 'Deuteronomy', 'chapters': 34, 'abbr': 'Deut'},
    {'name': 'Joshua', 'chapters': 24, 'abbr': 'Josh'},
    {'name': 'Judges', 'chapters': 21, 'abbr': 'Judg'},
    {'name': 'Ruth', 'chapters': 4, 'abbr': 'Ruth'},
    {'name': '1 Samuel', 'chapters': 31, 'abbr': '1Sam'},
    {'name': '2 Samuel', 'chapters': 24, 'abbr': '2Sam'},
    {'name': '1 Kings', 'chapters': 22, 'abbr': '1Ki'},
    {'name': '2 Kings', 'chapters': 25, 'abbr': '2Ki'},
    {'name': 'Psalms', 'chapters': 150, 'abbr': 'Ps'},
    {'name': 'Proverbs', 'chapters': 31, 'abbr': 'Prov'},
    {'name': 'Isaiah', 'chapters': 66, 'abbr': 'Isa'},
    {'name': 'Jeremiah', 'chapters': 52, 'abbr': 'Jer'},
    {'name': 'Ezekiel', 'chapters': 48, 'abbr': 'Ezek'},
    {'name': 'Daniel', 'chapters': 12, 'abbr': 'Dan'},
  ];

  final List<Map<String, dynamic>> _newTestament = [
    {'name': 'Matthew', 'chapters': 28, 'abbr': 'Matt'},
    {'name': 'Mark', 'chapters': 16, 'abbr': 'Mark'},
    {'name': 'Luke', 'chapters': 24, 'abbr': 'Luke'},
    {'name': 'John', 'chapters': 21, 'abbr': 'John'},
    {'name': 'Acts', 'chapters': 28, 'abbr': 'Acts'},
    {'name': 'Romans', 'chapters': 16, 'abbr': 'Rom'},
    {'name': '1 Corinthians', 'chapters': 16, 'abbr': '1Cor'},
    {'name': '2 Corinthians', 'chapters': 13, 'abbr': '2Cor'},
    {'name': 'Galatians', 'chapters': 6, 'abbr': 'Gal'},
    {'name': 'Ephesians', 'chapters': 6, 'abbr': 'Eph'},
    {'name': 'Philippians', 'chapters': 4, 'abbr': 'Phil'},
    {'name': 'Colossians', 'chapters': 4, 'abbr': 'Col'},
    {'name': 'Hebrews', 'chapters': 13, 'abbr': 'Heb'},
    {'name': 'James', 'chapters': 5, 'abbr': 'Jas'},
    {'name': '1 Peter', 'chapters': 5, 'abbr': '1Pet'},
    {'name': 'Revelation', 'chapters': 22, 'abbr': 'Rev'},
  ];

  List<Map<String, dynamic>> get _currentBooks =>
      _selectedTestament == 'Old Testament' ? _oldTestament : _newTestament;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF1A0533),
      appBar: AppBar(
        backgroundColor: const Color(0xFF1A0533),
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios, color: Color(0xFFD4AF37)),
          onPressed: () => Navigator.pop(context),
        ),
        title: const Text(
          'Books of the Bible',
          style: TextStyle(
            color: Color(0xFFD4AF37),
            fontWeight: FontWeight.bold,
            letterSpacing: 1.5,
          ),
        ),
      ),
      body: Column(
        children: [
          // Testament Toggle
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8),
            child: Container(
              decoration: BoxDecoration(
                color: const Color(0xFF2D1B5E),
                borderRadius: BorderRadius.circular(30),
              ),
              child: Row(
                children: ['Old Testament', 'New Testament'].map((t) {
                  final selected = _selectedTestament == t;
                  return Expanded(
                    child: GestureDetector(
                      onTap: () => setState(() => _selectedTestament = t),
                      child: AnimatedContainer(
                        duration: const Duration(milliseconds: 200),
                        padding: const EdgeInsets.symmetric(vertical: 12),
                        decoration: BoxDecoration(
                          color: selected
                              ? const Color(0xFFD4AF37)
                              : Colors.transparent,
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: Text(
                          t,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: selected
                                ? const Color(0xFF1A0533)
                                : Colors.white70,
                            fontWeight: selected
                                ? FontWeight.bold
                                : FontWeight.normal,
                            fontSize: 14,
                            letterSpacing: 0.5,
                          ),
                        ),
                      ),
                    ),
                  );
                }).toList(),
              ),
            ),
          ),
          const SizedBox(height: 8),
          // Books List
          Expanded(
            child: ListView.builder(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              itemCount: _currentBooks.length,
              itemBuilder: (context, index) {
                final book = _currentBooks[index];
                return Container(
                  margin: const EdgeInsets.only(bottom: 10),
                  decoration: BoxDecoration(
                    color: const Color(0xFF2D1B5E).withOpacity(0.6),
                    borderRadius: BorderRadius.circular(14),
                    border: Border.all(
                      color: const Color(0xFFD4AF37).withOpacity(0.2),
                    ),
                  ),
                  child: ListTile(
                    contentPadding:
                        const EdgeInsets.symmetric(horizontal: 20, vertical: 6),
                    leading: Container(
                      width: 44,
                      height: 44,
                      decoration: BoxDecoration(
                        color: const Color(0xFFD4AF37).withOpacity(0.15),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Center(
                        child: Text(
                          book['abbr'],
                          style: const TextStyle(
                            color: Color(0xFFD4AF37),
                            fontSize: 11,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    title: Text(
                      book['name'],
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    subtitle: Text(
                      '${book['chapters']} chapters',
                      style: const TextStyle(
                        color: Colors.white38,
                        fontSize: 12,
                      ),
                    ),
                    trailing: const Icon(
                      Icons.chevron_right,
                      color: Color(0xFFD4AF37),
                    ),
                    onTap: () {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text('Opening ${book['name']}...'),
                          backgroundColor: const Color(0xFF2D1B5E),
                          behavior: SnackBarBehavior.floating,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                        ),
                      );
                    },
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

// ─────────────────────────────────────────
// PAGE 3: DEVOTIONAL PAGE
// ─────────────────────────────────────────
class DevotionalPage extends StatefulWidget {
  const DevotionalPage({super.key});

  @override
  State<DevotionalPage> createState() => _DevotionalPageState();
}

class _DevotionalPageState extends State<DevotionalPage> {
  int _currentIndex = 0;

  final List<Map<String, String>> _devotionals = [
    {
      'day': 'Day 1',
      'title': 'Walking in Faith',
      'verse': 'Hebrews 11:1',
      'verseText':
          '"Now faith is the substance of things hoped for, the evidence of things not seen."',
      'reflection':
          'Faith is not the absence of doubt — it is the decision to trust God even when you cannot see the full picture. Today, take one step forward in an area where you have been hesitant, and trust that God goes before you.',
      'prayer':
          'Lord, strengthen my faith today. Help me to trust You even in uncertainty, knowing that You are working all things for my good. Amen.',
    },
    {
      'day': 'Day 2',
      'title': 'The Peace of God',
      'verse': 'Philippians 4:7',
      'verseText':
          '"And the peace of God, which surpasses all understanding, will guard your hearts and minds in Christ Jesus."',
      'reflection':
          'God\'s peace is not dependent on circumstances. It is a supernatural calm that He provides when we bring our anxieties to Him in prayer. In the storms of life, His peace stands as a guard over our hearts.',
      'prayer':
          'Heavenly Father, I surrender my worries to You. Fill me with Your peace that passes all understanding. Guard my heart and mind today. Amen.',
    },
    {
      'day': 'Day 3',
      'title': 'Renewed Strength',
      'verse': 'Isaiah 40:31',
      'verseText':
          '"But those who wait on the Lord shall renew their strength; they shall mount up with wings like eagles."',
      'reflection':
          'Waiting on God is never passive — it is an active trust in His timing. When we feel weary, He promises to renew us. Like an eagle that soars on thermal currents it did not create, we too can rise by His power.',
      'prayer':
          'Father, when I am tired and overwhelmed, remind me to wait on You. Renew my strength and help me soar above my circumstances by Your grace. Amen.',
    },
    {
      'day': 'Day 4',
      'title': 'Love One Another',
      'verse': 'John 13:34',
      'verseText':
          '"A new commandment I give to you, that you love one another: just as I have loved you, you also are to love one another."',
      'reflection':
          'The love Jesus commands is not based on feelings — it is a choice modeled after His own sacrificial love. Today, look for one practical way to show Christ\'s love to someone who may least expect it.',
      'prayer':
          'Jesus, teach me to love others the way You loved me — selflessly, patiently, and unconditionally. Let Your love flow through me today. Amen.',
    },
    {
      'day': 'Day 5',
      'title': 'God\'s Plans For You',
      'verse': 'Jeremiah 29:11',
      'verseText':
          '"For I know the plans I have for you, declares the Lord, plans for welfare and not for evil, to give you a future and a hope."',
      'reflection':
          'Even in seasons that feel confusing or painful, God\'s plans for you remain good. This promise was given to Israel in exile — a reminder that God works even through the hardest chapters of our lives.',
      'prayer':
          'Lord, I trust Your plans over my own. Even when I cannot see the way, help me to rest in the knowledge that You hold my future with hope. Amen.',
    },
  ];

  @override
  Widget build(BuildContext context) {
    final devotional = _devotionals[_currentIndex];

    return Scaffold(
      backgroundColor: const Color(0xFF1A0533),
      appBar: AppBar(
        backgroundColor: const Color(0xFF1A0533),
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios, color: Color(0xFFD4AF37)),
          onPressed: () => Navigator.pop(context),
        ),
        title: const Text(
          'Daily Devotional',
          style: TextStyle(
            color: Color(0xFFD4AF37),
            fontWeight: FontWeight.bold,
            letterSpacing: 1.5,
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 16),
            child: Center(
              child: Text(
                '${_currentIndex + 1} / ${_devotionals.length}',
                style: const TextStyle(color: Colors.white38, fontSize: 13),
              ),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Day Badge
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 6),
              decoration: BoxDecoration(
                color: const Color(0xFFD4AF37).withOpacity(0.15),
                borderRadius: BorderRadius.circular(20),
                border: Border.all(
                    color: const Color(0xFFD4AF37).withOpacity(0.4)),
              ),
              child: Text(
                devotional['day']!,
                style: const TextStyle(
                  color: Color(0xFFD4AF37),
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1.5,
                ),
              ),
            ),
            const SizedBox(height: 16),

            // Title
            Text(
              devotional['title']!,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 28,
                fontWeight: FontWeight.bold,
                height: 1.3,
              ),
            ),
            const SizedBox(height: 24),

            // Verse Card
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                gradient: const LinearGradient(
                  colors: [Color(0xFF2D1B5E), Color(0xFF3D2070)],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
                borderRadius: BorderRadius.circular(16),
                border: Border.all(
                  color: const Color(0xFFD4AF37).withOpacity(0.3),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      const Icon(Icons.format_quote,
                          color: Color(0xFFD4AF37), size: 20),
                      const SizedBox(width: 8),
                      Text(
                        devotional['verse']!,
                        style: const TextStyle(
                          color: Color(0xFFD4AF37),
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
                          letterSpacing: 1,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 12),
                  Text(
                    devotional['verseText']!,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontStyle: FontStyle.italic,
                      height: 1.7,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 24),

            // Reflection
            _sectionHeader(Icons.lightbulb_outline, 'Reflection'),
            const SizedBox(height: 10),
            Text(
              devotional['reflection']!,
              style: const TextStyle(
                color: Colors.white70,
                fontSize: 15,
                height: 1.8,
              ),
            ),
            const SizedBox(height: 24),

            // Prayer
            _sectionHeader(Icons.volunteer_activism_outlined, 'Prayer'),
            const SizedBox(height: 10),
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.04),
                borderRadius: BorderRadius.circular(12),
                border: Border.all(color: Colors.white12),
              ),
              child: Text(
                devotional['prayer']!,
                style: const TextStyle(
                  color: Colors.white60,
                  fontSize: 14,
                  fontStyle: FontStyle.italic,
                  height: 1.8,
                ),
              ),
            ),
            const SizedBox(height: 40),

            // Navigation
            Row(
              children: [
                if (_currentIndex > 0)
                  Expanded(
                    child: OutlinedButton.icon(
                      onPressed: () => setState(() => _currentIndex--),
                      icon: const Icon(Icons.arrow_back_ios, size: 14),
                      label: const Text('Previous'),
                      style: OutlinedButton.styleFrom(
                        foregroundColor: Colors.white70,
                        side: const BorderSide(color: Colors.white24),
                        padding: const EdgeInsets.symmetric(vertical: 14),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                      ),
                    ),
                  ),
                if (_currentIndex > 0) const SizedBox(width: 12),
                if (_currentIndex < _devotionals.length - 1)
                  Expanded(
                    child: ElevatedButton.icon(
                      onPressed: () => setState(() => _currentIndex++),
                      icon: const Text('Next'),
                      label: const Icon(Icons.arrow_forward_ios, size: 14),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFFD4AF37),
                        foregroundColor: const Color(0xFF1A0533),
                        padding: const EdgeInsets.symmetric(vertical: 14),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                      ),
                    ),
                  ),
                if (_currentIndex == _devotionals.length - 1)
                  Expanded(
                    child: ElevatedButton.icon(
                      onPressed: () => setState(() => _currentIndex = 0),
                      icon: const Icon(Icons.refresh),
                      label: const Text('Start Over'),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFFD4AF37),
                        foregroundColor: const Color(0xFF1A0533),
                        padding: const EdgeInsets.symmetric(vertical: 14),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                      ),
                    ),
                  ),
              ],
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }

  Widget _sectionHeader(IconData icon, String title) {
    return Row(
      children: [
        Icon(icon, color: const Color(0xFFD4AF37), size: 20),
        const SizedBox(width: 8),
        Text(
          title,
          style: const TextStyle(
            color: Color(0xFFD4AF37),
            fontSize: 16,
            fontWeight: FontWeight.bold,
            letterSpacing: 1.2,
          ),
        ),
      ],
    );
  }
}