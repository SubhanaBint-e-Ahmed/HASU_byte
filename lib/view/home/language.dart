import 'package:cocoon/res/constants/imports.dart';

class LanguageScreen extends StatefulWidget {
  const LanguageScreen({super.key});

  @override
  State<LanguageScreen> createState() => _LanguageScreenState();
}

class _LanguageScreenState extends State<LanguageScreen> {
  String _selectedLanguage = 'English (US)';

  final List<String> _suggestedLanguages = [
    'English (US)',
    'English (UK)',
  ];

  final List<String> _otherLanguages = [
    'Mandarin',
    'Hindi',
    'Spanish',
    'French',
    'Arabic',
    'Bengali',
    'Russian',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Location',
          style: TextStyle(
            fontSize: 16, // Reduced font size
          ),
        ),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Suggested',
              style: TextStyle(
                fontSize: 16, // Font size for "Suggested"
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            const SizedBox(height: 10),
            ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: _suggestedLanguages.length,
              itemBuilder: (context, index) {
                return RadioListTile<String>(
                  title: Text(_suggestedLanguages[index]),
                  value: _suggestedLanguages[index],
                  groupValue: _selectedLanguage,
                  onChanged: (value) {
                    setState(() {
                      _selectedLanguage = value!;
                    });
                  },
                  controlAffinity: ListTileControlAffinity.trailing, // Shift radio to right side
                );
              },
            ),
            const Divider(
              color: Colors.grey,
              thickness: 1, // Horizontal divider
            ),
            const SizedBox(height: 10),
            const Text(
              'Languages',
              style: TextStyle(
                fontSize: 16, // Font size for "Languages"
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            const SizedBox(height: 10),
            Expanded(
              child: ListView.builder(
                itemCount: _otherLanguages.length,
                itemBuilder: (context, index) {
                  return RadioListTile<String>(
                    title: Text(_otherLanguages[index]),
                    value: _otherLanguages[index],
                    groupValue: _selectedLanguage,
                    onChanged: (value) {
                      setState(() {
                        _selectedLanguage = value!;
                      });
                    },
                    controlAffinity: ListTileControlAffinity.trailing, // Shift radio to right side
                  );
                },
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Padding(
  padding: const EdgeInsets.all(16.0),
  child: SizedBox(
    width: 20, 
   
   
    // Reduced height for smaller button size
    child:  
              AppButton.primary(
                title: 'Apply',
                onPressed: () {
                 
                },
               
              ),
  ),
),

    );
  }
}
