import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  get mainAxisAlignment => null;

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'IT Department',
      home: Scaffold(
        appBar: AppBar(
          leading: Builder(
            builder: (context) => PopupMenuButton(
              icon:
                  Icon(Icons.menu), //don't specify icon if you want 3 dot menu
              color: Colors.white,
              itemBuilder: (context) => [
                PopupMenuItem<int>(
                  value: 0,
                  child: Text(
                    "About",
                    style: TextStyle(color: Colors.grey[800]),
                  ),
                ),
                PopupMenuItem<int>(
                  value: 1,
                  child: Text(
                    "Academics",
                    style: TextStyle(color: Colors.grey[800]),
                  ),
                ),
                PopupMenuItem<int>(
                  value: 2,
                  child: Text(
                    "Placement",
                    style: TextStyle(color: Colors.grey[800]),
                  ),
                ),
              ],
              onSelected: (value) => {
                if (value == 0)
                  {
                    about(context),
                  }
                else if (value == 1)
                  {
                    academics(context),
                  }
                else 
                  {
                    placement(context),
                  }
                
              },
            ),
          ),


          
          title: Center(child : Text("Welcome To IT Department"),),
          backgroundColor: Colors.blue[600],
        ),
        body: Builder(
          builder: (context) => Center(
            child: Column(
              children: [
                Image.network(
                  'https://images.shiksha.com/mediadata/images/1547198255phpre9PGZ.jpeg',
                  height: 400,
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    RaisedButton(
                      child: Text('INTEL® Intelligent Systems Lab' ,
                    style: TextStyle(color: Colors.white,),),
                      onPressed: () => LAB1(context),
                      color: Colors.blue[600],
                      padding: EdgeInsets.all(25.0),
                    ),
                    RaisedButton(
                      child: Text('Microsoft Virtual Academy Lab',
                    style: TextStyle(color: Colors.white,),),
                      onPressed: () => LAB2(context),
                      color: Colors.blue[600],
                      padding: EdgeInsets.all(25.0),
                    ),
                    RaisedButton(
                      child: Text('Apple iOS Developer Centre',
                    style: TextStyle(color: Colors.white,),),
                      onPressed: () => LAB3(context),
                      color: Colors.blue[600],
                      padding: EdgeInsets.all(25.0),
                      
                    ),
                  
                  ],
                ),

                SizedBox(
                  height: 30,
                ),
                
                RaisedButton(
                  child: Text('Contact Us',
                    style: TextStyle(color: Colors.white,),),
                  onPressed: () => contactUs(context),
                  color: Colors.blue[600],
                  padding: EdgeInsets.all(25.0),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void contactUs(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Contact Us',textAlign: TextAlign.center, style: TextStyle(color: Colors.blue[600],fontWeight: FontWeight.bold),),
          content: Text('Email ID: hodit@famt.ac.in\n\nAddress: FAMT, P- 60, P- 60/1, MIDC, Mirjole Block, Ratnagiri - 415639\n\nPhone No: 7559463770'),
          actions: <Widget>[
            FlatButton(
              child: Text('Close'),
              onPressed: () => Navigator.of(context).pop(),
            )
          ],
        );
      },
    );
  }

  void LAB1(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Center(child : Text('Welcome To INTEL® Intelligent Systems Lab',
          style: TextStyle(color: Colors.blue[600] , fontWeight: FontWeight.bold),),),
          content: Column(
            children: [
              Image.network(
                'https://images.shiksha.com/mediadata/images/1547198350phpWXQrB0.jpeg',
                height: 350,
              ),
              Text("\nLab 2/1 " , style: TextStyle(fontWeight: FontWeight.bold),),
              Text("\nINTEL ® Intelligent Systems Laboratory  was started on 16.04.2018 jointly by INTEL-FICE and Finolex Academy of Management & Technology, Ratnagiri. Academy signed  a MoU with INTEL TECHNOLOGY PRIVATE INDIA LIMITED. Hands on sessions were conducted by the experts, Suryender Kumar and Abhishek Kumar from Intel – Fice Technical team and  Dr. Vinayak Bharadi ,HOD IT.\n\nThe lab has been set-up with Intel edison breakout boards(8), two set of sensors box consisting 27 sensors each. "),
            ],
          ),
          actions: <Widget>[
            FlatButton(
              child: Text('Close'),
              onPressed: () => Navigator.of(context).pop(),
            )
          ],
        );
      },
    );
  }

  void LAB2(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Center(child : Text('Welcome To Microsoft Virtual Academy Lab',
          style: TextStyle(color: Colors.blue[600] , fontWeight: FontWeight.bold),),),
          content: Column(
            
            children: [
              Image.network(
                'https://images.shiksha.com/mediadata/images/1637922115phpDFaiyx.jpeg',
                height: 350,
              ),
                Text("\nLab 2/2", style: TextStyle(fontWeight: FontWeight.bold),),
                Text("\nMicrosoft Virtual academy is a membership program in collaboration with ATS Info tech Mumbai, designed to help the college offer students and faculty online learning solutions for IT skills training and certification as well as technology essentials for professionals.\n\nThe MVA offers a mix of on-demand courses and live events; each course contains a video and PDF download of the video transcript. ")
                
            ],
            
          ),
          actions: <Widget>[
            FlatButton(
              child: Text('Close'),
              onPressed: () => Navigator.of(context).pop(),
            )
          ],
        );
      },
    );
  }

  void LAB3(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Center(child : Text('Welcome To Apple iOS Developer Centre Lab',
          style: TextStyle(color: Colors.blue[600] , fontWeight: FontWeight.bold),),),
          content: Column(
            children: [
              Image.network(
                'https://images.shiksha.com/mediadata/images/1585826982php0LbPhv.jpeg',
                height: 350,
              ),
              Text("\nLab 1/3", style: TextStyle(fontWeight: FontWeight.bold),),
              Text("\nThe Centre of Excellence has opened the new frontiers for the IT students and faculty members for Mobile Application Development on Apple iOS platform.\n\nIt has brought the following advantage to FAMT: \n\n1)Brand building by International Tie-up with Apple iOS Developer University Program. \n2)Train the faculty and students in iOS Application Development used in iPhone and iPad. \n3)Resource and training material by Apple Inc.")
            ],
          ),
          actions: <Widget>[
            FlatButton(
              child: Text('Close'),
              onPressed: () => Navigator.of(context).pop(),
            )
          ],
        );
      },
    );
  }

  void about(BuildContext context) {
    // print("Hello");
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('About',textAlign: TextAlign.center, style: TextStyle(color: Colors.blue[600],fontWeight: FontWeight.bold),),
          content: Column(
            children: [
              Image.network(
                'http://famt.ac.in/wp-content/uploads/2021/07/IMG_3192-1.webp',
                height: 350,
              ),
              Text("\n\nFinolex Academy of Management and Technology (FAMT) was established in 1996 to impart quality technical education at affordable cost and contribute to the industrial growth of our nation. \nThe academy is approved by All India Council for Technical Education (AICTE), New Delhi; recognized by Directorate of Technical Education (DTE), Government of Maharashtra, affiliated to University of Mumbai, and accredited with B++ Grade by National Assessment & Accreditation Council (NAAC).")
            ],
          ),
          actions: <Widget>[
            FlatButton(
              child: Text('Close'),
              onPressed: () => Navigator.of(context).pop(),
            )
          ],
        );
      },
    );
  }

  void academics(BuildContext context) {
    // print("Hello");
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Academics',textAlign: TextAlign.center, style: TextStyle(color: Colors.blue[600],fontWeight: FontWeight.bold),),
          content: Column(
            children: [
              Image.network(
                'https://i1.wp.com/famt.ac.in/wp-content/uploads/2015/08/DSC_0050.jpg',
                height: 350,
              ),
              Text("\n\nIn this high-tech era, information is something without which industry, individuals cannot survive, and their success depends on the ability to acquire accurate and timely information. Keeping this in mind FAMT started the Bachelor of Engineering program in Information Technology (IT) from academic session 2001-2002. The emphasis of B.E. in Information Technology curriculum is on Computer Science, Software Development, Networking, Communication, Web Engineering, Security, Multimedia processing, IoT, Cloud Computing, Data Analytics, and Soft Computing.")
            ],
          ),
          actions: <Widget>[
            FlatButton(
              child: Text('Close'),
              onPressed: () => Navigator.of(context).pop(),
            )
          ],
        );
      },
    );
  }

  void placement(BuildContext context) {
    // print("Hello");
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Placement',textAlign: TextAlign.center, style: TextStyle(color: Colors.blue[600],fontWeight: FontWeight.bold),),
          content: Column(
            children: [
              Image.network(
                'https://famt.ac.in/tnp/wp-content/uploads/2020/09/clg.jpg',
                height: 350,
              ),
              Text("\n\nTraining and Placement Cell actively interfaces with the reputed organizations for arranging interviews and campus drives. The cell endeavours to sort out specialized courses, workshops and corporate training sessions. Industry expert are invited intermittently to improve the knowledge of our understudy with the most recent technological developments and industry hones. We foster graduates who are well prepared to deal with the working standards of the industry in public and private sectors and help each understudy to characterize his/her career interest through expert’s advice.\nOUR GOALS\n1)To organize Campus Interviews for pre-final and final year students\n2)To arrange Industry – Institution interaction to establish a rapport with the industry"),
            ],
          ),
          actions: <Widget>[
            FlatButton(
              child: Text('Close'),
              onPressed: () => Navigator.of(context).pop(),
            )
          ],
        );
      },
    );
  }

  
}
