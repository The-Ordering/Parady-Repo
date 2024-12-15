import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Header Section
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children:[
                      Text(
                        "Hello ETEC,",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        "You have work today",
                        style: TextStyle(
                          fontSize: 10,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                  ClipOval(
                    child: Image.network(
                      'https://images.pexels.com/photos/29665824/pexels-photo-29665824/free-photo-of-cute-cartoon-face-hat-on-textured-stone-surface.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2', 
                      width: 50,
                      height: 50,
                      fit: BoxFit.cover,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              GridView.count(
                crossAxisCount: 2,
                crossAxisSpacing: 16,
                mainAxisSpacing: 16,
                shrinkWrap: true,
                physics:const NeverScrollableScrollPhysics(),
                childAspectRatio: 2.1,
                children: [
                  _buildCategoryCard(
                    "Project",
                     "                          5", 
                     Colors.blue.shade100
                  ),
                  _buildCategoryCard(
                    "Work",
                    "                              3", 
                    Colors.green.shade100
                  ),
                  _buildCategoryCard(
                    "Daily Tasks",
                    "                  2", 
                    Colors.purple.shade100
                  ),
                  _buildCategoryCard(
                    "Groceries",
                    "                     7", 
                    Colors.orange.shade100
                  ),
                ],
              ),
              const SizedBox(height: 20),

              // Today's Tasks Header
              const Text(
                "Today's Tasks",
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 10),
              Expanded(
                child: ListView(
                  children: [
                    _buildTaskCard("Email to Ameer", "07:00 AM to 08:00 PM"),
                    _buildTaskCard("Groceries", "08:00 AM to 9:00 PM"),
                    _buildTaskCard("Do Project", "09:00 AM to 10:00 PM"),
                    _buildTaskCard("Send Notes", "10:00 AM to 11:00 PM"),
                    _buildTaskCard("Training Staff", "11:00 AM to 12:00 PM"),
                    _buildTaskCard("Send a message", "12:00 AM to 01:00 PM"),
                    _buildTaskCard("Booking the Hotels", "02:00 AM to 03:00 PM"),
                    _buildTaskCard("Watching NetFlex", "03:00 AM to 04:00 PM"),
                  ],
                ),
              ),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.purple,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    padding: const EdgeInsets.symmetric(vertical: 16),
                  ),
                  child: const Text(
                    "Create new task",
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.white,
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

  Widget _buildCategoryCard(String title, String count, Color color) {
    return Container(
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(12),
      ),
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Icon(
            Icons.folder,
            size: 28,
            color: Colors.white60,
          ),
          const SizedBox(height: 4),
          Row(
            children: [
              Text(
                title,
                style: const TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
              ),
              Text(
                count,
                style: const TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ],
          ),
          
        ],
      ),
    );
  }

  Widget _buildTaskCard(String taskName, String time) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 8 ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: ListTile(
        leading: const Icon(
          Icons.circle_outlined,
          color: Colors.grey,
          size: 28,
        ),
        title: Text(
          taskName,
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
        subtitle: Text(time),
        trailing:const Row(
          mainAxisSize: MainAxisSize.min,
          children:[
            Icon(
              Icons.edit,
              color: Colors.grey,
            ),
            SizedBox(width: 8),
            Icon(
              Icons.delete,
              color: Colors.red,
            ),
          ],
        ),
      ),
    );
  }
}