import 'package:flutter/material.dart';

class HomeScreenView extends StatefulWidget {
  const HomeScreenView({super.key});

  @override
  State<HomeScreenView> createState() => _HomeScreenViewState();
}

class _HomeScreenViewState extends State<HomeScreenView> {
  // List<Map<dynamic, dynamic>> newtsk = [
  //   {
  //     "from": "04:00 PM",
  //     "To": "05:00 PM",
  //     "Title": "My New Task",
  //     "date": "01 November 2024",
  //     "status": "To do",
  //   },
  // ];

  final TextEditingController fromController = TextEditingController();
  final TextEditingController toController = TextEditingController();
  final TextEditingController titleController = TextEditingController();
  final TextEditingController descriptionController = TextEditingController();
  List<Map<dynamic, dynamic>> newtsk = [];

  void addCard() {
    setState(() {
      newtsk.add({
        "from": fromController.text,
        "to": toController.text,
        "title": titleController.text,
        "description": descriptionController.text,
        "date": "01 November 2024",
        "status": "To do",
      });
    });
    fromController.clear();
    toController.clear();
    titleController.clear();
    descriptionController.clear();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Padding(
          padding: EdgeInsets.all(5.0),
          child: Text(
            'Welcome to Notes',
            style: TextStyle(
              fontSize: 30,
              fontFamily: 'Arial',
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        backgroundColor: Colors.grey,
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 10, bottom: 10),
            child: CircleAvatar(
              radius: 35,
              backgroundImage: AssetImage('assets/images/profile.jpg'),
            ),
          ),
        ],
      ),
      body: Container(
        decoration: const BoxDecoration(
          color: Colors.white,
        ),
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Column(
                  children: [
                    Text(
                      'Have a Great Day',
                      style: TextStyle(
                        fontSize: 30,
                        fontFamily: 'Arial',
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 25,
                ),
                const Text(
                  'My Priority Task',
                  style: TextStyle(
                    fontSize: 30,
                    fontFamily: 'Arial',
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                const Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Expanded(
                      child: Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                        ),
                        color: Colors.grey,
                        elevation: 4,
                        child: Padding(
                          padding: EdgeInsets.all(16.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                '2 hours ago',
                                style: TextStyle(
                                  color: Color.fromARGB(255, 187, 186, 186),
                                  fontSize: 12,
                                ),
                              ),
                              Align(
                                alignment: Alignment.topRight,
                                child: Icon(
                                  Icons.mobile_screen_share_outlined,
                                  color: Colors.white,
                                  size: 18,
                                ),
                              ),
                              SizedBox(height: 10),
                              Text(
                                'Mobile App UI Design',
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                              SizedBox(height: 5),
                              Text(
                                'using figma and other tools',
                                style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.black54,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 16,
                    ),
                    Expanded(
                      child: Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(10),
                          ),
                        ),
                        color: Colors.grey,
                        elevation: 4,
                        child: Padding(
                          padding: EdgeInsets.all(16.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                '4 hours ago',
                                style: TextStyle(
                                  color: Color.fromARGB(255, 199, 198, 198),
                                  fontSize: 12,
                                ),
                              ),
                              Align(
                                alignment: Alignment.topRight,
                                child: Icon(
                                  Icons.camera_alt,
                                  color: Colors.white,
                                  size: 18,
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                'Capture Sunrise Shots',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                'Complete GuruShot Challenge',
                                style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.black54,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Text(
                        "Upcoming Tasks",
                        style: TextStyle(
                            fontSize: 24,
                            fontFamily: 'Arial',
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  height: 200,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                    children: [
                      Center(
                        child: ListView.builder(
                          itemCount: newtsk.length,
                          shrinkWrap: true,
                          itemBuilder: (context, i) {
                            return Card(
                              // margin: const EdgeInsets.symmetric(
                              //     vertical: 10, horizontal: 10), // Card margin
                              elevation: 4, // Shadow effect
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(
                                    10), // Rounded corners
                              ),
                              child: ListTile(
                                //contentPadding: const EdgeInsets.all(8.0),
                                title: Text(
                                  newtsk[i]["title"],
                                  style: const TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                subtitle: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const SizedBox(height: 8),
                                    Text(
                                      "From: ${newtsk[i]["from"]}  To: ${newtsk[i]["to"]}",
                                      style: TextStyle(
                                        fontSize: 16,
                                        color: Colors.grey[700],
                                      ),
                                    ),
                                    const SizedBox(height: 8),
                                    Text(
                                      newtsk[i]["description"],
                                      style: const TextStyle(
                                        fontSize: 14,
                                        color: Colors.black54,
                                      ),
                                    ),
                                  ],
                                ),
                                trailing: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    IconButton(
                                      icon: const Icon(Icons.delete,
                                          color: Colors.red),
                                      onPressed: () {
                                        // Handle delete action
                                        setState(() {
                                          newtsk.removeAt(
                                              i); // Remove the item from the list
                                        });
                                      },
                                    ),
                                    IconButton(
                                      icon: const Icon(Icons.more_vert,
                                          color: Colors.grey),
                                      onPressed: () {
                                        // Handle more action (e.g., show options)
                                        showModalBottomSheet(
                                          context: context,
                                          builder: (BuildContext context) {
                                            return Container(
                                              height: 150,
                                              child: Column(
                                                children: [
                                                  ListTile(
                                                    leading:
                                                        const Icon(Icons.edit),
                                                    title:
                                                        const Text("Edit Task"),
                                                    onTap: () {
                                                      Navigator.pop(context);
                                                      // Handle edit action here
                                                    },
                                                  ),
                                                  ListTile(
                                                    leading:
                                                        const Icon(Icons.share),
                                                    title: const Text(
                                                        "Share Task"),
                                                    onTap: () {
                                                      Navigator.pop(context);
                                                      // Handle share action here
                                                    },
                                                  ),
                                                ],
                                              ),
                                            );
                                          },
                                        );
                                      },
                                    ),
                                  ],
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      FloatingActionButton(
                        onPressed: () {
                          showDialog(
                            context: context,
                            builder: (BuildContext context) {
                              return AlertDialog(
                                // title: Text("My Dialogue"),
                                content: Column(
                                  children: [
                                    const Text(
                                      "Create New Task",
                                      style: TextStyle(
                                          fontSize: 24,
                                          fontFamily: 'Arial',
                                          fontWeight: FontWeight.bold),
                                    ),
                                    const SizedBox(
                                      height: 15,
                                    ),
                                    Column(
                                      children: [
                                        TextField(
                                          controller: fromController,
                                          obscureText: false,
                                          decoration: InputDecoration(
                                            labelText: "From",
                                            border: OutlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                            ),
                                          ),
                                        ),
                                        const SizedBox(
                                          height: 10,
                                        ),
                                        TextField(
                                          controller: toController,
                                          obscureText: false,
                                          decoration: InputDecoration(
                                            labelText: "To",
                                            border: OutlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                            ),
                                          ),
                                        ),
                                        const SizedBox(
                                          height: 10,
                                        ),
                                        TextField(
                                          controller: titleController,
                                          obscureText: false,
                                          decoration: InputDecoration(
                                            labelText: "Title",
                                            border: OutlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                            ),
                                          ),
                                        ),
                                        const SizedBox(
                                          height: 10,
                                        ),
                                        TextField(
                                          controller: descriptionController,
                                          maxLines: 3,
                                          decoration: InputDecoration(
                                            labelText: "Description",
                                            border: OutlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                    const SizedBox(
                                      height: 18,
                                    ),
                                    Column(
                                      children: [
                                        ElevatedButton(
                                          onPressed: addCard,
                                          child: const Text(
                                            "Add",
                                            style: TextStyle(
                                              fontSize: 18,
                                              fontFamily: 'Arial',
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              );
                            },
                          );
                        },
                        shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(40),
                          ),
                        ),
                        child: const Icon(Icons.add),
                      ),
                      const Align(
                        alignment: Alignment.bottomCenter,
                      ),
                    ],
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
