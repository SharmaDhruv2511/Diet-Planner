import 'package:flutter/material.dart';

class DietPlan extends StatelessWidget {
  final double bmiScore;
  const DietPlan({Key? key, required this.bmiScore}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Widget> dietCards = [];
    List<Widget> lastDiet = [];

    if (bmiScore < 18.5) {
      // Diet plan for underweight
      dietCards = [
        const DietCard(
          day: 'Day 1: ',
          breakfast: [
            '2 whole eggs scrambled with spinach and cheese Whole grain toast with avocado slicesA glass of whole milk',
          ],
          lunch: [
            'Grilled chicken breast Quinoa salad with mixed vegetables (bell peppers, cucumbers, tomatoes) '
                'A piece of fruit (apple, banana, or pear)',
          ],
          dinner: [
            'Baked salmon with roasted sweet potatoes Steamed broccoli Whole grain roll with butter',
          ],
        ),
        const DietCard(
          day: 'Day 2: ',
          breakfast: [
            'Oatmeal cooked in whole milk topped with berries and a spoonful of peanut butter Glass of orange juice',
          ],
          lunch: [
            'Turkey and avocado wrap with whole grain tortilla Mixed green salad with olive oil and vinegar dressing '
                'A piece of dark chocolate',
          ],
          dinner: [
            'Beef stir-fry with mixed vegetables (broccoli, bell peppers, carrots) '
                'served over brown rice Stir-fried tofu for vegetarians A small serving of fruit salad',
          ],
        ),
        const DietCard(
          day: 'Day 3: ',
          breakfast: [
            'Whole grain pancakes topped with Greek yogurt and mixed berries Glass of whole milk',
          ],
          lunch: [
            'Lentil soup with whole grain roll Side salad with chickpeas, tomatoes, and feta cheese',
          ],
          dinner: [
            'Grilled steak with roasted potatoes Steamed asparagus Whole grain dinner roll',
          ],
        ),
      ];
      lastDiet = [
        const LastDiet(
            day: 'Day 4-7: ',
            detail:
                'For the remaining days, you can mix and match meals from the previous days, '
                'ensuring youre getting a balance of protein, healthy fats, '
                'complex carbohydrates, and micronutrients. Try to incorporate a variety of foods to ensure '
                'youre meeting all your nutritional needs.'),
      ];
    } else if (bmiScore >= 18.5 && bmiScore < 25) {
      dietCards = [
        const DietCard(
          day: 'Day 1: ',
          breakfast: [
            'Scrambled eggs with sautéed spinach, tomatoes, and onions Whole grain toast A piece of fruit (apple, orange, or berries) Green tea or black coffee',
          ],
          lunch: [
            'Grilled chicken breast salad with mixed greens, cherry tomatoes, cucumbers, and avocadoBalsamic vinaigrette dressingWhole grain roll',
          ],
          dinner: [
            'Baked salmon fillet with steamed broccoli and quinoaSide salad with mixed greens, bell peppers, and feta cheeseSparkling water with lemon',
          ],
        ),
        const DietCard(
          day: 'Day 2: ',
          breakfast: [
            'Overnight oats made with rolled oats, almond milk, chia seeds, sliced banana, and a sprinkle of cinnamon Handful of walnuts Green tea or herbal tea',
          ],
          lunch: [
            'Turkey and avocado wrap with whole grain tortilla Mixed green salad with olive oil and lemon dressing A small piece of dark chocolate',
          ],
          dinner: [
            'Grilled tofu stir-fry with mixed vegetables (broccoli, bell peppers, snap peas) served over brown rice Edamame beans Glass of unsweetened almond milk',
          ],
        ),
        const DietCard(
          day: 'Day 3: ',
          breakfast: [
            'Whole grain waffles topped with Greek yogurt and mixed berriesGlass of orange juice',
          ],
          lunch: [
            'Quinoa salad with chickpeas, cherry tomatoes, cucumbers, and feta cheese Lemon-tahini dressing Whole grain roll',
          ],
          dinner: [
            'Grilled shrimp skewers with roasted sweet potatoes and asparagus Mixed green salad with avocado and balsamic vinaigrette Sparkling water with lime',
          ],
        ),
      ];
      lastDiet = [
        const LastDiet(
            day: 'Day 4-7: ',
            detail:
                'For the remaining days, you can continue to mix and match meals from the previous days, '
                'ensuring youre getting a balance of protein, healthy fats, complex carbohydrates, and micronutrients. '
                'Variety is key to ensuring youre meeting all your nutritional needs.'),
      ];
    } else if (bmiScore >= 25 && bmiScore < 30) {
      dietCards = [
        const DietCard(
          day: 'Day 1: ',
          breakfast: [
            'Greek yogurt with sliced strawberries and a sprinkle of granola Green tea or black coffee',
          ],
          lunch: [
            'Grilled chicken breast salad with mixed greens, cherry tomatoes, cucumbers, and balsamic vinaigrette dressing Whole grain roll',
          ],
          dinner: [
            'Baked salmon with roasted Brussels sprouts and quinoaMixed green salad with lemon-tahini dressing',
          ],
        ),
        const DietCard(
          day: 'Day 2: ',
          breakfast: [
            'Spinach and mushroom omelet cooked with olive oil Whole grain toast Glass of unsweetened almond milk',
          ],
          lunch: [
            'Turkey and avocado wrap with whole grain tortillaSide salad with mixed greens and balsamic vinaigrette',
          ],
          dinner: [
            'Stir-fried tofu with mixed vegetables (bell peppers, snap peas, carrots) served over brown rice Steamed broccoli',
          ],
        ),
        const DietCard(
          day: 'Day 3: ',
          breakfast: [
            'Whole grain oatmeal topped with sliced banana and a spoonful of almond butterGreen tea or herbal tea',
          ],
          lunch: [
            'Lentil soup with a side of mixed green salad and whole grain roll',
          ],
          dinner: [
            'Grilled chicken breast with roasted sweet potatoes and asparagus Mixed green salad with lemon-tahini dressing',
          ],
        ),
      ];
      lastDiet = [
        const LastDiet(
            day: 'Day 4-7: ',
            detail:
                'For the remaining days, continue to incorporate a variety of lean proteins, '
                'whole grains, fruits, vegetables, and healthy fats into your meals. Remember to '
                'practice portion control and listen to your bodys hunger and fullness cues. Here are some additional meal ideas for the rest of the week'),
      ];
    } else {
      dietCards = [
        const DietCard(
          day: 'Day 1: ',
          breakfast: [
            'Scrambled eggs with spinach and tomatoes Whole grain toast A small apple',
          ],
          lunch: [
            'Grilled chicken salad with mixed greens, cucumbers, and bell peppersBalsamic vinaigrette dressing',
          ],
          dinner: [
            'Baked salmon with steamed broccoli and quinoa',
          ],
        ),
        const DietCard(
          day: 'Day 2: ',
          breakfast: [
            'Oatmeal cooked with almond milk and topped with sliced banana and a sprinkle of cinnamonGreen tea',
          ],
          lunch: [
            'Turkey and avocado wrap with whole grain tortillaSide salad with mixed greens',
          ],
          dinner: [
            'Grilled tofu stir-fry with mixed vegetables (broccoli, bell peppers, snap peas) served over brown rice',
          ],
        ),
        const DietCard(
          day: 'Day 3: ',
          breakfast: [
            'Whole grain waffles with Greek yogurt and mixed berriesHerbal tea',
          ],
          lunch: [
            'Lentil soup with a side of mixed green salad',
          ],
          dinner: [
            'Baked chicken breast with roasted sweet potatoes and asparagus',
          ],
        ),
      ];
      lastDiet = [
        const LastDiet(
            day: 'Day 4-7: ',
            detail:
                'For the remaining days, continue to incorporate a variety of lean proteins, whole grains, fruits, and vegetables into your meals. Here are some additional meal ideas:'
                'Grilled fish with steamed vegetables and quinoa Stir-fried vegetables with tofu or lean beef and brown rice Turkey chili with a side of mixed greens Whole grain pasta with marinara sauce and a side salad'),
      ];
    }
    // Add more conditions for other BMI ranges if needed

    return Scaffold(
      appBar: AppBar(
        title: const Text('Your Diet Plan'),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: [
          Column(
            children: dietCards,
          ),
          Column(
            children: lastDiet,
          )
        ],
      ),
    );
  }
}

class DietCard extends StatelessWidget {
  final String day;

  final List<String> breakfast;
  final List<String> lunch;
  final List<String> dinner;

  const DietCard({
    Key? key,
    required this.day,
    required this.breakfast,
    required this.lunch,
    required this.dinner,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              day,
              style: const TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8.0),
            const Text(
              'Breakfast:',
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 3.0),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: breakfast.map((item) {
                return Text(item);
                // return Text('- $item');
              }).toList(),
            ),
            const SizedBox(height: 8.0),
            const Text(
              'Lunch:',
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 3.0),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: lunch.map((item) {
                return Text(item);
              }).toList(),
            ),
            const SizedBox(height: 8.0),
            const Text(
              'Dinner:',
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 3.0),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: dinner.map((item) {
                return Text(item);
              }).toList(),
            ),
          ],
        ),
      ),
    );
  }
}

class LastDiet extends StatelessWidget {
  final String day;
  final String detail;
  const LastDiet({super.key, required this.day, required this.detail});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              day,
              style: const TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8.0),
            Text(
              detail,
              style: TextStyle(),
            ),
          ],
        ),
      ),
    );
  }
}
