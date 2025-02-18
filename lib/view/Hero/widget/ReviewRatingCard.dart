import 'package:flutter/material.dart';
import 'package:cocoon/res/constants/app_colors.dart';

class ReviewRatingCard extends StatefulWidget {
  const ReviewRatingCard({super.key});

  @override
  _ReviewRatingCardState createState() => _ReviewRatingCardState();
}

class _ReviewRatingCardState extends State<ReviewRatingCard> {
  final List<Map<String, dynamic>> reviews = [
    {
      'name': 'George James',
      'location': 'Chicago, USA',
      'reviewText':
          'Rob did another amazing job. He is definitely one of the best freelancers I\'ve ever worked with. And his voice is excellent, too. Fast delivery, impeccable quality.',
      'rating': 5,
      'imagePath': 'assets/images/boy.png',
      'timeAgo': '2 weeks ago'
    },
    {
      'name': 'John Smith',
      'location': 'New York, USA',
      'reviewText':
          'Amazing work! The project was delivered on time, and the quality was top-notch. Highly recommend working with him.',
      'rating': 4,
      'imagePath': 'assets/images/boy.png',
      'timeAgo': '1 week ago'
    },
    {
      'name': 'Emily Johnson',
      'location': 'London, UK',
      'reviewText':
          'Absolutely fantastic job! Would love to work with Rob again in the future.',
      'rating': 5,
      'imagePath': 'assets/images/boy.png',
      'timeAgo': '3 days ago'
    },
  ];

  int displayedReviews = 3; // Display all reviews by default

  Widget buildReviewCard(Map<String, dynamic> review) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5.0),
      child: SizedBox(
        width: 332,
        height: 210,
        
        child: Column(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 0),
                  child: CircleAvatar(
                    radius: 30,
                    backgroundColor: Colors.transparent,
                    child: ClipOval(
                      child: Image.asset(
                        review['imagePath'],
                        fit: BoxFit.cover,
                        width: 50,
                        height: 50,
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 3),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 10.0),
                        child: Text(
                          review['name'],
                          style: const TextStyle(
                            fontFamily: 'Gellix',
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            height: 22.4 / 16,
                            letterSpacing: 0.2,
                            decoration: TextDecoration.none,
                          ),
                        ),
                      ),
                      const SizedBox(height: 3),
                      Container(
                        width: 275,
                        height: 22,
                        padding: const EdgeInsets.only(bottom: 4),
                        child: Text(
                          review['location'],
                          style: const TextStyle(
                            fontFamily: 'Gellix',
                            fontSize: 14,
                            color: Color(0xFF9E9E9E),
                            fontWeight: FontWeight.w400,
                            height: 20.4 / 14,
                            letterSpacing: 0.2,
                            decoration: TextDecoration.none,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 4),
            Row(
              children: [
                const SizedBox(width: 5),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: List.generate(
                          5,
                          (index) => Icon(
                            Icons.star,
                            size: 20,
                            color: index < review['rating']
                                ? AppColors.yellow
                                : AppColors.lightGray,
                          ),
                        ),
                      ),
                      const SizedBox(height: 9),
                      Text(
                        review['timeAgo'],
                        style: const TextStyle(
                          color: Colors.grey,
                          fontSize: 12,
                        ),
                      ),
                      const SizedBox(height: 9),
                      Text(
                        review['reviewText'],
                        style: const TextStyle(
                          color: Colors.black87,
                          fontSize: 14,
                          height: 1.5,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

 @override
Widget build(BuildContext context) {
  return SingleChildScrollView(
    child: Padding(
      padding: const EdgeInsets.all(0.0),
      child: Container(
        width: 380,
        padding: const EdgeInsets.fromLTRB(24, 20, 24, 20),
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(16)),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Color.fromARGB(20, 6, 15, 20),
              offset: Offset(0, 4),
              blurRadius: 60,
              spreadRadius: 5,
            ),
          ],
        ),
        clipBehavior: Clip.none,  // Prevent clipping of shadow
        child: Column(
          children: [
            ...reviews.map((review) {
              return Column(
                children: [
                  buildReviewCard(review),
                  Divider(
                    color: Colors.grey.withOpacity(0.4),
                    thickness: 1,
                    indent: 0,
                    endIndent: 0,
                  ),
                ],
              );
            }),
            Container(
              width: 125,
              height: 50,
              margin: const EdgeInsets.symmetric(vertical: 16),
              decoration: BoxDecoration(
                color: const Color(0xFFF5F5F5),
                borderRadius: BorderRadius.circular(100),
              ),
              child: TextButton(
                onPressed: displayedReviews >= reviews.length
                    ? null
                    : () {
                        setState(() {
                          displayedReviews += 1;
                        });
                      },
                child: const Text(
                  'Load more',
                  style: TextStyle(
                    fontSize: 14,
                    color: AppColors.purple,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    ),
  );
}

}
