import 'package:flutter/material.dart';

void main() {
  runApp(const MyPortfolio());
}

class MyPortfolio extends StatelessWidget {
  const MyPortfolio({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'My Portfolio',

      // Named Routes
      initialRoute: '/',
      routes: {
        '/': (context) => const HomePage(),
        '/about': (context) => const AboutPage(),
        '/projects': (context) => const ProjectsPage(),
      },
    );
  }
}

// ============================================================
// HOME PAGE
// ============================================================

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'My Portfolio',
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.indigo,
        foregroundColor: Colors.white,
      ),

      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [

                // Profile Image
                CircleAvatar(
                  radius: screenWidth < 500 ? 65 : 80,
                  backgroundImage: const NetworkImage(
                    'https://i.pravatar.cc/300?img=47',
                  ),
                ),

                const SizedBox(height: 25),

                // Name
                const Text(
                  'Paridhi Prasanna',
                  style: TextStyle(
                    fontSize: 26,
                    fontWeight: FontWeight.bold,
                    color: Colors.indigo,
                  ),
                ),

                const SizedBox(height: 8),

                // Designation
                Text(
                  'B.Tech 3rd Year • Computer Science',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.grey.shade800,
                  ),
                ),

                const SizedBox(height: 35),

                // About Me Button
                SizedBox(
                  width: 170,
                  height: 48,
                  child: ElevatedButton.icon(
                    onPressed: () {
                      Navigator.pushNamed(context, '/about');
                    },
                    icon: const Icon(
                      Icons.person_outline,
                      color: Colors.white,
                    ),
                    label: const Text(
                      'About Me',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.indigo,
                      foregroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25),
                      ),
                      elevation: 2,
                    ),
                  ),
                ),

                const SizedBox(height: 15),

                // Projects Button
                SizedBox(
                  width: 170,
                  height: 48,
                  child: ElevatedButton.icon(
                    onPressed: () {
                      Navigator.pushNamed(context, '/projects');
                    },
                    icon: const Icon(
                      Icons.folder_outlined,
                      color: Colors.white,
                    ),
                    label: const Text(
                      'Projects',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.indigo,
                      foregroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25),
                      ),
                      elevation: 2,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}


// ============================================================
// ABOUT PAGE
// ============================================================

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: const Text(
          'About Me',
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.indigo,
        foregroundColor: Colors.white,
      ),

      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20),

            child: Column(
              children: [

                // Main About Container
                Container(
                  width: double.infinity,
                  padding: const EdgeInsets.symmetric(
                    horizontal: 30,
                    vertical: 40,
                  ),

                  decoration: BoxDecoration(
                    color: Colors.indigo.shade50,
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: const [
                      BoxShadow(
                        blurRadius: 8,
                        offset: Offset(0, 4),
                        color: Colors.grey,
                      ),
                    ],
                  ),

                  child: Column(
                    children: [

                      const Icon(
                        Icons.person,
                        size: 60,
                        color: Colors.indigo,
                      ),

                      const SizedBox(height: 25),

                      // Description
                      const Text(
                        'Hello! I’m Paridhi Prasanna, a passionate '
                        ' Computer Science Engineering student '
                        'from CR Rao AIMSCS. I love exploring '
                        'modern technologies and building creative '
                        'digital projects that solve real-world problems.',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 17,
                          height: 1.5,
                        ),
                      ),

                      const SizedBox(height: 30),

                      // Skills Heading
                      const Text(
                        'Skills & Expertise',
                        style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                          color: Colors.indigo,
                        ),
                      ),

                      const SizedBox(height: 15),

                      // Skills
                      Wrap(
                        alignment: WrapAlignment.center,
                        spacing: 10,
                        runSpacing: 10,
                        children: [
                          _skillBox('Python'),
                          _skillBox('Java'),
                          _skillBox('Flutter'),
                          _skillBox('HTML'),
                          _skillBox('CSS'),
                          _skillBox('JavaScript'),
                          _skillBox('Firebase'),
                          _skillBox('Git'),
                        ],
                      ),
                    ],
                  ),
                ),

                const SizedBox(height: 30),

                // Back to Home
                ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.indigo,
                    foregroundColor: Colors.white,
                    padding: const EdgeInsets.symmetric(
                      horizontal: 25,
                      vertical: 13,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25),
                    ),
                    elevation: 2,
                  ),
                  child: const Text(
                    'Back to Home',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  // Skill Box
  Widget _skillBox(String skill) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 16,
        vertical: 9,
      ),
      decoration: BoxDecoration(
        color: Colors.indigo.shade700,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Text(
        skill,
        style: const TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.w500,
          fontSize: 14,
        ),
      ),
    );
  }
}


// ============================================================
// PROJECTS PAGE
// ============================================================

class ProjectsPage extends StatelessWidget {
  const ProjectsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: const Text(
          'My Projects',
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.indigo,
        foregroundColor: Colors.white,
      ),

      body: Column(
        children: [

          // Project Cards
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: ListView(
                children: [

                  // ==================================================
                  // PROJECT 1 - DRIVESAFE AI
                  // ==================================================

                  _projectCard(
                    icon: Icons.directions_car,
                    title: 'Driver Monitoring System',
                    description:
                        'An AI-based system that monitors driver '
                        'behavior and detects signs of drowsiness '
                        'to improve road safety.',
                    technologies: [
                      'Python',
                      'OpenCV',
                      'MediaPipe',
                    ],
                  ),

                  const SizedBox(height: 20),

                 
                  _projectCard(
                    icon: Icons.school_outlined,
                    title: 'College Resource Platform',
                    description:
                        'A centralized platform that brings '
                        'academic resources, events, discussions '
                        'and student services together.',
                    technologies: [
                      'HTML',
                      'CSS',
                      'JavaScript',
                      'Firebase',
                    ],
                  ),

                  const SizedBox(height: 20),

                  // ==================================================
                  // PROJECT 3 - INSIGHTFLOW
                  // ==================================================

                  _projectCard(
                    icon: Icons.psychology_outlined,
                    title: 'Human Activity Recognition',
                    description:
                        'An AI-powered system that recognizes '
                        'multiple everyday human activities '
                        'using deep learning.',
                    technologies: [
                      'Python',
                      'TensorFlow',
                      'MobileNetV2',
                    ],
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 20),

_projectCard(
  icon: Icons.verified_outlined,
  title: 'Smart Content Analysis',
  description:
      'An AI-powered system that analyzes online content, '
      'detects potentially misleading information, and provides '
      'evidence-based verification using NLP and retrieval techniques.',
  technologies: [
    'Python',
    'FastAPI',
    'Transformers',
    'FAISS',
  ],
),
          // ==================================================
          // BACK TO HOME
          // ==================================================

          Center(
            child: ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.indigo,
                foregroundColor: Colors.white,
                padding: const EdgeInsets.symmetric(
                  horizontal: 25,
                  vertical: 13,
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25),
                ),
                elevation: 2,
              ),
              child: const Text(
                'Back to Home',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ),

          const SizedBox(height: 15),
        ],
      ),
    );
  }


  Widget _projectCard({
    required IconData icon,
    required String title,
    required String description,
    required List<String> technologies,
  }) {
    return Container(
      height: 220,

      decoration: BoxDecoration(
        color: Colors.indigo.shade50,
        borderRadius: BorderRadius.circular(20),
        boxShadow: const [
          BoxShadow(
            blurRadius: 7,
            offset: Offset(0, 4),
            color: Colors.grey,
          ),
        ],
      ),

      child: Row(
        children: [

          Container(
            width: 120,

            decoration: const BoxDecoration(
              color: Colors.indigo,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20),
                bottomLeft: Radius.circular(20),
              ),
            ),

            child: Center(
              child: Icon(
                icon,
                color: Colors.white,
                size: 50,
              ),
            ),
          ),

       

          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(22),

              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                  // Project Name
                  Text(
                    title,
                    style: const TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.indigo,
                    ),
                  ),

                  // Description
                  Text(
                    description,
                    style: const TextStyle(
                      fontSize: 14,
                      height: 1.4,
                    ),
                  ),

                  const Spacer(),

                  // Technology Chips
                  Wrap(
                    spacing: 7,
                    runSpacing: 7,
                    children: technologies
                        .map(
                          (tech) => _techChip(tech),
                        )
                        .toList(),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }



  Widget _techChip(String text) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 11,
        vertical: 6,
      ),

      decoration: BoxDecoration(
        color: Colors.indigo.shade700,
        borderRadius: BorderRadius.circular(20),
      ),

      child: Text(
        text,
        style: const TextStyle(
          color: Colors.white,
          fontSize: 12,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }
}