

import 'package:flutter/material.dart';
import 'package:cocoon/res/constants/app_colors.dart';
import 'package:cocoon/view/Cart/widget/EmptyCartScreen.dart';  
import 'package:cocoon/view/Cart/cartItem.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({super.key});

  @override
  _CartScreenState createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  bool _isCartEmpty = true; // Initially cart is empty

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  void _updateCartScreen() {
    setState(() {
      _isCartEmpty = false; // Change state to show food items
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(100),
        child: AppBar(
          automaticallyImplyLeading: false,
          elevation: 0,
          title: const Text(
            'Cart',
            style: TextStyle(
              fontFamily: 'Gellix',
              fontWeight: FontWeight.w700,
              fontSize: 20,
              height: 24 / 20,
              color: AppColors.purple,
            ),
          ),
          centerTitle: true,
          bottom: PreferredSize(
            preferredSize: const Size.fromHeight(41),
            child: Container(
              color: AppColors.white,
              child: TabBar(
  controller: _tabController,
  labelColor: AppColors.purple,
  unselectedLabelColor: const Color(0xFF9E9E9E),
  indicator: UnderlineTabIndicator(
    borderSide: const BorderSide(width: 4, color: AppColors.purple),
    insets: const EdgeInsets.symmetric(horizontal: 50),
    borderRadius: BorderRadius.circular(100),
  ),
  labelStyle: const TextStyle(
    fontFamily: 'Gellix',
    fontWeight: FontWeight.w600,
    fontSize: 18,
    height: 25.2 / 18,
    letterSpacing: 0.2,
  ),
  tabs: const [ 
    Tab(text: "Cart"),
    Tab(text: "Tasks"),
    Tab(text: "Offers"),
  ],
),

            ),
          ),
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        physics: const NeverScrollableScrollPhysics(),
        children: [
          _isCartEmpty
              ? EmptyCartScreen(onIconTap: _updateCartScreen) 
              : const FoodOrderList(), 
          Container(), 
          Container(), 
        ],
      ),
    );
  }
}


class TasksScreen extends StatelessWidget {
  const TasksScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Tasks Screen")),
      body: const Center(child: Text("Tasks content here")),
    );
  }
}

class OffersScreen extends StatelessWidget {
  const OffersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Offers Screen")),
      body: const Center(child: Text("Offers content here")),
    );
  }
}
