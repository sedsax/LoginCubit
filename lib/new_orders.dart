import 'package:flutter/material.dart';

class NewOrders extends StatefulWidget {
  const NewOrders({super.key});

  @override
  State<NewOrders> createState() => _NewOrdersState();
}

class _NewOrdersState extends State<NewOrders> {
  late DateTime pickedDate;

  @override
  void initState() {
    super.initState();
    pickedDate = DateTime.now();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 20),
      child: Column(
        children: [
          const SizedBox(
            height: 30,
          ),
          //birinci bölüm
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text(
                    "    Total Sales",
                    style: TextStyle(fontSize: 20),
                  ),
                  IconButton(onPressed: null, icon: Icon(Icons.arrow_drop_down))
                ],
              ),
              const Text(
                "₺ 0",
                style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
              ),
              GestureDetector(
                child: Text(
                ("${pickedDate.day}.${pickedDate.month}.${pickedDate.year}"),
                  style: TextStyle(fontSize: 18, color: Colors.grey[600]),
                ),
                onTap: () async {
                  DateTime? date = await showDatePicker(
                      context: context,
                      initialDate: pickedDate,
                      firstDate: DateTime(DateTime.now().year - 2),
                      lastDate: DateTime(DateTime.now().year + 2));
                  if (date != null) {
                    setState(() {
                      pickedDate = date;
                    });
                  }
                },
              ),
            ],
          ),
          const SizedBox(
            height: 30,
          ),

          //ikinci bölüm
          Container(
            height: 40,
            padding: const EdgeInsets.symmetric(horizontal: 15),
            decoration: BoxDecoration(
              color: Colors.grey[200],
              borderRadius: BorderRadius.circular(5.0),
            ),
            child: Row(
              children: const [
                Text("Top Sales",
                    style:
                        TextStyle(fontSize: 15, fontWeight: FontWeight.w500)),
                Spacer(),
                Text("Brands",
                    style: TextStyle(fontSize: 15, color: Color(0xFF6f55FF))),
                IconButton(onPressed: null, icon: Icon(Icons.arrow_drop_down))
              ],
            ),
          ),
          const SizedBox(
            height: 30,
          ),

          //üçüncü bölüm
          const CircleAvatar(
            backgroundImage: NetworkImage('https://picsum.photos/250?image=9'),
            radius: 30,
          ),
          const SizedBox(
            height: 30,
          ),

          //dördüncü bölüm
          const Text(
            "You don’t have any sales for the\ntime period you selected.",
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: 30,
          ),

          //beşinci bölüm
          Container(
            height: 40,
            padding: const EdgeInsets.symmetric(horizontal: 15),
            decoration: BoxDecoration(
              color: Colors.grey[200],
              borderRadius: BorderRadius.circular(5.0),
            ),
            child: Row(
              children: const [
                Text("Active Session Count",
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                    )),
              ],
            ),
          ),
          const SizedBox(
            height: 30,
          ),

          //altıncı bölüm
          const Text(
              "There are no active users for the selected sales\nchannels at the moment."),
        ],
      ),
    );
  }
}
