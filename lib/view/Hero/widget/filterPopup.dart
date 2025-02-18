import 'package:cocoon/res/constants/imports.dart';
import 'package:cocoon/view/Hero/GroupOrder.dart';

class FilterPopup extends StatefulWidget {
  const FilterPopup({super.key});

  @override
  FilterPopupState createState() => FilterPopupState();
}

class FilterPopupState extends State<FilterPopup> {
  bool _sortByDateExpanded = true;
  bool _sortByRatingExpanded = false;
  final List<bool> _checkboxValues = List.generate(5, (index) => false);

  double _calculatePopupHeight() {
    double screenHeight = MediaQuery.of(context).size.height;
    double baseHeight = screenHeight * 0.43;
    double expansionTileHeight = 0;

    if (_sortByDateExpanded) {
      expansionTileHeight += 130;
    }

    if (_sortByRatingExpanded) {
      expansionTileHeight += _checkboxValues.length * 80;
    }

    return baseHeight + expansionTileHeight > screenHeight * 0.9
        ? screenHeight * 0.9
        : baseHeight + expansionTileHeight;
  }

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: const BorderRadius.only(
        topLeft: Radius.circular(48),
        topRight: Radius.circular(48),
      ),
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(48),
            topRight: Radius.circular(48),
          ),
        ),
        height: _calculatePopupHeight(),
        child: Column(
          children: [
            Center(
              child: Container(
                height: 4,
                width: 55,
                color: Colors.grey.shade300,
                margin: const EdgeInsets.only(top: 8, bottom: 16),
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      const Center(
                        child: Text(
                          "Filter",
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                            height: 1.2,
                            fontFamily: 'Gellix',
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      const SizedBox(height: 20),
                      // Sort by Date ExpansionTile
                      Container(
                        width: 380,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.08),
                              blurRadius: 60,
                              offset: const Offset(0, 4),
                            ),
                          ],
                        ),
                        child: Theme(
                          data: Theme.of(context)
                              .copyWith(dividerColor: Colors.transparent),
                          child: ExpansionTile(
                            title: const Text(
                              'Sort by date',
                              style: TextStyle(
                                fontFamily: 'Gellix',
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                                height: 1.4,
                                letterSpacing: 0.2,
                                textBaseline: TextBaseline.alphabetic,
                              ),
                            ),
                            initiallyExpanded: _sortByDateExpanded,
                            onExpansionChanged: (expanded) {
                              setState(() {
                                _sortByDateExpanded = expanded;
                              });
                            },
                            children: <Widget>[
                              const SizedBox(height: 10),
                              Container(
                                width: double.infinity,
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 20, vertical: 20),
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(20),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.black.withOpacity(0.08),
                                      blurRadius: 60,
                                      offset: const Offset(0, 4),
                                    ),
                                  ],
                                ),
                                child: const Column(
                                  children: [
                                    Align(
                                      alignment: Alignment.centerLeft,
                                      child: Text(
                                        "New to Old",
                                        style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w500,
                                          color: Colors.black,
                                        ),
                                      ),
                                    ),
                                    Divider(
                                      color: Color(0xFFEEEEEE),
                                      thickness: 1,
                                      height: 24,
                                    ),
                                    Align(
                                      alignment: Alignment.centerLeft,
                                      child: Text(
                                        "Old to New",
                                        style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w500,
                                          color: Colors.black,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(height: 20),
                      // Sort by Rating ExpansionTile
                      Container(
                        width: 380,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(16),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.08),
                              blurRadius: 60,
                              offset: const Offset(0, 4),
                            ),
                          ],
                        ),
                        child: Theme(
                          data: Theme.of(context)
                              .copyWith(dividerColor: Colors.transparent),
                          child: ExpansionTile(
                            title: const Text(
                              'Sort by rating',
                              style: TextStyle(
                                fontFamily: 'Gellix',
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                                height: 1.4,
                                letterSpacing: 0.2,
                                textBaseline: TextBaseline.alphabetic,
                              ),
                            ),
                            initiallyExpanded: _sortByRatingExpanded,
                            onExpansionChanged: (expanded) {
                              setState(() {
                                _sortByRatingExpanded = expanded;
                              });
                            },
                            children: <Widget>[
                              const SizedBox(height: 10),
                              Container(
                                width: 380,
                                padding:
                                    const EdgeInsets.symmetric(vertical: 10),
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(16),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.black.withOpacity(0.08),
                                      blurRadius: 60,
                                      offset: const Offset(0, 4),
                                    ),
                                  ],
                                ),
                                child: Column(
                                  children: List.generate(
                                      _checkboxValues.length, (index) {
                                    return Container(
                                      margin: const EdgeInsets.only(bottom: 10),
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 20),
                                      height: 64,
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(16),
                                        boxShadow: [
                                          BoxShadow(
                                            color:
                                                Colors.black.withOpacity(0.08),
                                            blurRadius: 60,
                                            offset: const Offset(0, 4),
                                          ),
                                        ],
                                      ),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Row(
                                            children: List.generate(5 - index,
                                                (starIndex) {
                                              return const Icon(
                                                Icons.star,
                                                color: Colors.amber,
                                                size: 20,
                                              );
                                            }),
                                          ),
                                          Checkbox(
                                            value: _checkboxValues[index],
                                            onChanged: (value) {
                                              setState(() {
                                                _checkboxValues[index] = value!;
                                              });
                                            },
                                          ),
                                        ],
                                      ),
                                    );
                                  }),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(height: 20),
                      ElevatedButton(
                        onPressed: () {
                      
                          print('Filters applied');

                    
                          Get.to(() => const GroupOrderScreen());
                        },
                        style: ElevatedButton.styleFrom(
                          fixedSize: const Size(311, 58),
                          padding: const EdgeInsets.symmetric(
                              vertical: 18, horizontal: 16), 
                          backgroundColor:
                              const Color(0xFF642D91), 
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(100),
                          ),
                        ),
                        child: const Text(
                          'Apply',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
