import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ProfileScreen extends StatefulWidget {
  @override
  _ProfileScreenState createState() => _ProfileScreenState();


}

class _ProfileScreenState extends State<ProfileScreen> {

  int currentIndex = 0;
  void onTapped(int value) {
    setState(() {
      currentIndex=value;
    });
  }


  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(
              image: DecorationImage(
            image:
                AssetImage('assets/pawel-czerwinski-8uZPynIu-rQ-unsplash.jpg'),
            fit: BoxFit.cover,
          )),
        ),
        Container(
          color: Colors.transparent,
          child: Scaffold(
            backgroundColor: Colors.transparent,
            appBar: AppBar(
              backgroundColor: Colors.transparent,
              elevation: 0.0,
              leading: Padding(
                padding: const EdgeInsets.all(15.0),
                child: SvgPicture.asset(
                  'assets/Arrow.svg',
                  color: Colors.white,
                  fit: BoxFit.contain,
                ),
              ),
              actions: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SvgPicture.asset(
                    'assets/menu.svg',
                    color: Colors.white,
                  ),
                ),
              ],
            ),
            body: SingleChildScrollView(
              child: Container(
                height: size.height,
                child: Column(
                  children: [
                    ProfilePic(),
                    SizedBox(
                      height: 10.0,
                    ),
                    Container(
                      color: Colors.white54,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: ProfileBody(),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            bottomNavigationBar: BottomNavigationBar(
              currentIndex: currentIndex,
              onTap: onTapped,
              backgroundColor: Colors.transparent,
              items: [
                BottomNavigationBarItem(
                  activeIcon: SvgPicture.asset(
                    'assets/home.svg',
                    color: Color(0xff0B4FFF),
                    fit: BoxFit.contain,
                  ),
                  label: '',
                  icon: SvgPicture.asset(
                    'assets/home.svg',
                    color: Colors.grey,
                    fit: BoxFit.contain,
                  ),
                ),
                BottomNavigationBarItem(
                  label: '',
                  activeIcon: SvgPicture.asset(
                    'assets/Chat.svg',
                    color: Color(0xff0B4FFF),
                    fit: BoxFit.contain,
                  ),
                  icon: SvgPicture.asset(
                    'assets/Chat.svg',
                    color: Colors.grey,
                    fit: BoxFit.contain,
                  ),
                ),
                BottomNavigationBarItem(
                  label: '',
                  activeIcon: SvgPicture.asset(
                    'assets/love.svg',
                    color: Color(0xff0B4FFF),
                    fit: BoxFit.contain,
                  ),
                  icon: SvgPicture.asset(
                    'assets/love.svg',
                    color: Colors.grey,
                    fit: BoxFit.contain,
                  ),
                ),
                BottomNavigationBarItem(
                  label: '',
                  activeIcon:SvgPicture.asset(
                    'assets/profile.svg',
                    color: Color(0xff0B4FFF),
                    fit: BoxFit.contain,
                  ),
                  icon: SvgPicture.asset(
                    'assets/profile.svg',
                    color: Colors.grey,
                    fit: BoxFit.contain,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class ProfilePic extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Stack(
      children: [
        Padding(
          padding: EdgeInsets.only(top: 50.0, left: 10, right: 10.0),
          child: Container(
            width: size.width,
            decoration: BoxDecoration(
              color: Colors.white70,
              borderRadius: BorderRadius.circular(20.0),
            ),
            child: Padding(
              padding: EdgeInsets.only(top: 60.0),
              child: Column(
                children: [
                  Text(
                    'Isabella',
                    style:
                        TextStyle(fontWeight: FontWeight.w500, fontSize: 20.0),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Text(
                      'This is a demo information, guys i hope you are enjoying my tutorial and also learn about how to create a profile screen of the users.',
                      style: TextStyle(fontSize: 16.0, color: Colors.grey[600]),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsets.only(left: 35, right: 35.0, bottom: 10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                            width: 250.0,
                            child: ElevatedButton(
                                onPressed: () {},
                                child: Text(
                                  'Follow',
                                  style: TextStyle(fontSize: 20.0),
                                ),
                                style: ElevatedButton.styleFrom(
                                    primary: Color(0xff0B4FFF)))),
                        SizedBox(
                          width: 10.0,
                        ),
                        Container(
                          height: 35.0,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(4.0),
                            color: Color(0xff0B4FFF),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: SvgPicture.asset(
                              'assets/paper-plane 1.svg',
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
        Align(
          alignment: Alignment.topCenter,
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              shape: BoxShape.circle,
            ),
            child: Padding(
              padding: const EdgeInsets.all(4.0),
              child: Container(
                height: 100.0,
                width: 100.0,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      image: AssetImage(
                          'assets/pexels-andrea-piacquadio-3762370.jpg'),
                      fit: BoxFit.cover,
                    )),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class ProfileBody extends StatelessWidget {
  const ProfileBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
            child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15.0),
            color: Color(0xffF8F8FA).withOpacity(0.8),
          ),
          child: Padding(
            padding: const EdgeInsets.all(4.0),
            child: Column(
              children: [
                CommonText(
                  kValue: '10K',
                  likeLabel: 'Likes',

                ),
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Divider(
                    thickness: 1.0,
                  ),
                ),
                CommonText(
                  kValue: '528',
                  likeLabel: 'Following',
                ),
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Divider(
                    thickness: 1.0,
                  ),
                ),
                CommonText(
                  kValue: '1.2K',
                  likeLabel: 'Followers',
                ),
              ],
            ),
          ),
        )),
        Expanded(flex: 3, child: ProfileRightSide()),
      ],
    );
  }
}

class CommonText extends StatelessWidget {
  final String? kValue;
  final String? likeLabel;
  const CommonText({Key? key, this.kValue, this.likeLabel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          children: [
            Text(
              '${kValue ?? '0'}',
              style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 5.0,
            ),
            Text(
              '${likeLabel ?? 'Likes'}',
              style: TextStyle(color: Colors.grey[600], fontSize: 14.0),
            ),
          ],
        ),
      ),
    );
  }
}

class ProfileRightSide extends StatelessWidget {
  const ProfileRightSide({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'Friends',
              style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
            ),
          ),
          Container(
            height: 80.0,
            child: GridView.count(
              crossAxisCount: 1,
              scrollDirection: Axis.horizontal,
              children: [
                CircularPic(
                  picUrl: 'assets/pexels-andrea-piacquadio-3763188.jpg',
                ),
                CircularPic(),
                CircularPic(picUrl: 'assets/pexels-masha-raymers-2726111.jpg'),
                CircularPic(picUrl: 'assets/pexels-photo-1674752.jpg'),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'Gallery',
              style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
            ),
          ),
          Container(
            height: size.height * 0.35,
            child: GridView.count(
              crossAxisCount: 2,
              scrollDirection: Axis.vertical,
              children: [
                GalleryPic(
                  topLeftRadius: true,
                  galleryPicUrl: 'assets/pexels-lumn-168803.jpg',
                ),
                GalleryPic(
                  topRightRadius: true,
                  galleryPicUrl: 'assets/pexels-pixabay-46253.jpg',
                ),
                GalleryPic(
                  galleryPicUrl: 'assets/pexels-photo-2433467.jpg',
                ),
                GalleryPic(
                  galleryPicUrl: 'assets/pexels-photo-1166209.jpg',
                ),
                GalleryPic(
                  galleryPicUrl: 'assets/pexels-photo-1486974.jpg',
                  bottomLeftRadius: true,
                ),
                GalleryPic(
                    galleryPicUrl: 'assets/pexels-sunyu-kim-1544880.jpg',
                    bottomRightRadius: true),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class CircularPic extends StatelessWidget {
  final String? picUrl;
  const CircularPic({Key? key, this.picUrl}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          shape: BoxShape.circle,
        ),
        child: Padding(
          padding: const EdgeInsets.all(2.0),
          child: Container(
            height: 60.0,
            width: 60.0,
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: AssetImage(picUrl ?? 'assets/girl.jpg'),
                  fit: BoxFit.cover,
                )),
          ),
        ),
      ),
    );
  }
}

class GalleryPic extends StatelessWidget {
  final bool topLeftRadius;
  final bool topRightRadius;
  final bool bottomLeftRadius;
  final bool bottomRightRadius;
  final String? galleryPicUrl;
  const GalleryPic(
      {Key? key,
      this.topLeftRadius = false,
      this.topRightRadius = false,
      this.bottomLeftRadius = false,
      this.bottomRightRadius = false,
      this.galleryPicUrl})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft:
                topLeftRadius ? Radius.circular(20.0) : Radius.circular(0.0),
            topRight:
                topRightRadius ? Radius.circular(20.0) : Radius.circular(0.0),
            bottomRight: bottomRightRadius
                ? Radius.circular(20.0)
                : Radius.circular(0.0),
            bottomLeft:
                bottomLeftRadius ? Radius.circular(20.0) : Radius.circular(0.0),
          ),
          image: DecorationImage(
            image: AssetImage(galleryPicUrl ?? 'assets/girl.jpg'),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
