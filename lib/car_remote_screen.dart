import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:profile_app/my_colors.dart';

class CarRemoteScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: MyColors.carBackColorG1 ,
        leading: Icon(Icons.car_repair_sharp, size: 30.0, color: MyColors.red,),
        title: Text('SUV Model X', style: TextStyle(fontSize: 25.0, fontWeight: FontWeight.w500),),
        actions: [
          Icon(Icons.notifications, size: 30.0, color: Colors.grey,)
        ],
      ),
      backgroundColor: MyColors.carBackColorG1,
      body: SingleChildScrollView(
        child: Container(
          height: size.height,
          decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  MyColors.carBackColorG1 ,
                  MyColors.carBackColorG11,
                  MyColors.carBackColorG12,
                  MyColors.carBackColorG2 ,
                  MyColors.carBackColorG21,
                ],
              )),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left:10.0, right: 10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text('Parked ', style: TextStyle(color: Colors.white, fontSize: 16.0,  fontWeight: FontWeight.w500),),
                    Text('888 Boyston St, Bpston', style: TextStyle(color: Colors.grey , fontSize: 16.0,  fontWeight: FontWeight.w500),),
                  ],
                ),
              ),
              SizedBox(height: 5.0,),
              Divider(color: Colors.grey,thickness: 1.0,),
              SizedBox(height: 5.0,),
              Padding(
                padding: const EdgeInsets.only(left:10.0, right: 10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        Text('150 mi ', style: TextStyle(color: Colors.white, fontSize: 18.0, fontWeight: FontWeight.w500),),
                        Text('Range', style: TextStyle(color: Colors.grey , fontSize: 16.0,  fontWeight: FontWeight.w500),),
                      ],
                    ),
                    Column(
                      children: [
                        Text('80 % ', style: TextStyle(color: Colors.white, fontSize: 18.0, fontWeight: FontWeight.w500),),
                        Text('Charge', style: TextStyle(color: Colors.grey , fontSize: 16.0,  fontWeight: FontWeight.w500),),
                      ],
                    ),
                    Column(
                      children: [
                        Text('64 F ', style: TextStyle(color: Colors.white, fontSize: 18.0, fontWeight: FontWeight.w500),),
                        Text('Temp', style: TextStyle(color: Colors.grey , fontSize: 16.0,  fontWeight: FontWeight.w500),),
                      ],
                    ),
                    Column(
                      children: [
                        Text('0 mph ', style: TextStyle(color: Colors.white, fontSize: 18.0, fontWeight: FontWeight.w500),),
                        Text('Speed', style: TextStyle(color: Colors.grey , fontSize: 16.0,  fontWeight: FontWeight.w500),),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 5.0,),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    height: 500.0,
                    width: 150.0,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/car.png'),
                        fit: BoxFit.fill
                      )
                    ),
                  ),
                  Column(
                    children: [
                      Row(
                        children: [
                          CarButton(),
                          CarButton(
                            buttonColor: MyColors.lightGreen3,
                            buttonIcon: Icons.airline_seat_recline_normal_outlined,
                            buttonLabel: 'Seat Adjusted',
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          CarButton(
                            buttonColor: MyColors.orange,
                            buttonIcon: Icons.location_on,
                            buttonLabel: 'Location',
                          ),
                          CarButton(
                            buttonColor: MyColors.mColor,
                            buttonIcon: Icons.electric_car,
                            buttonLabel: 'Charging',
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          CarButton(
                            buttonColor: MyColors.darkRed,
                            buttonIcon: Icons.contactless_rounded,
                            buttonLabel: 'Controls',
                          ),
                          CarButton(
                            buttonColor: MyColors.lightPink,
                            buttonIcon: Icons.polymer,
                            buttonLabel: 'Summon',
                          ),
                        ],
                      ),

                    ],
                  )
                ],
              ),
              SizedBox(height: 5.0,),
            ],
          ),
        ),
      ),
      bottomSheet: Container(
        height: 100.0,
        decoration: BoxDecoration(
          color: MyColors.carBackColorG1,
          borderRadius: BorderRadius.only(topLeft: Radius.circular(50.0), topRight: Radius.circular(50.0),
          )
        ),
        child: Padding(
          padding: const EdgeInsets.only(left:50.0,right: 50.0,top:10.0, bottom: 5.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              MenuButton(
                manuLabel: 'Light on',
                menuIcon: Icons.lightbulb,
              ),
              MenuButton(
                menuIcon: Icons.lock,
                manuLabel: 'Locked',
              ),
              MenuButton(
                menuIcon: Icons.volume_off_sharp,
                manuLabel: 'Sound off',
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CarButton extends StatelessWidget {
  final String? buttonLabel;
  final IconData? buttonIcon;
  final Color? buttonColor;
  const CarButton({Key? key, this.buttonLabel, this.buttonIcon, this.buttonColor}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 110.0,
        width: 100.0,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15.0),
          color: MyColors.carButtonColor,
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 50.0,
                width: 50.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12.0),
                  color: buttonColor?? MyColors.lightPink10,
                ),
                child: Center(
                  child: Icon(buttonIcon??Icons.play_arrow,size: 30.0, color: Colors.white,),
                ),
              ),
              Text(buttonLabel??'Media', style: TextStyle(color: Colors.white, fontWeight: FontWeight.w500),)
            ],
          ),
        ),
      ),
    );
  }
}

class MenuButton extends StatelessWidget {
  final String? manuLabel;
  final IconData? menuIcon;
  const MenuButton({Key? key, this.manuLabel, this.menuIcon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(2.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12.0),
                color:Colors.grey,
              ),
              child: Padding(
                padding: const EdgeInsets.all(1.0),
                child: Container(
                  height: 60.0,
                  width: 60.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12.0),
                    color:MyColors.carButtonColor,
                  ),
                  child: Center(
                    child: Icon(menuIcon??Icons.flip_camera_android_outlined,size: 30.0, color: Colors.grey[300],),
                  ),
                ),
              ),
            ),
            Text(manuLabel??'Media', style: TextStyle(color: Colors.white, fontWeight: FontWeight.w500),)
          ],
        ),
      ),

    );
  }
}

