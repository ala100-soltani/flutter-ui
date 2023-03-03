import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_news_app/app_style.dart';
import 'package:flutter_news_app/size_config.dart';
import 'package:flutter_svg/svg.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return SafeArea(
      child: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
        children: [
          Row(
            children: [
              Container(
                width: 51,
                height: 51,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    color: klightblue,
                    image: const DecorationImage(
                        image: NetworkImage(
                            "https://cdn-icons-png.flaticon.com/512/147/147144.png"))),
              ),
              const SizedBox(
                width: 30,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "WELCOME ",
                    style: kpopinsbold.copyWith(
                        fontSize: SizeConfig.boxsizehorizental! * 4),
                  ),
                  Text(
                    "Date Now",
                    style: kpopinsregular.copyWith(
                        fontSize: SizeConfig.boxsizehorizental! * 3,
                        color: kgrey),
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(
            height: 30,
          ),
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                color: kwhite,
                boxShadow: [
                  BoxShadow(
                      color: kdarkblue.withOpacity(0.051),
                      offset: const Offset(0.0, 3.0),
                      blurRadius: 24.0,
                      spreadRadius: 0.0),
                ]),
            child: Row(children: [
              Expanded(
                  child: TextField(
                style: kpopinsregular.copyWith(
                    color: kblue, fontSize: SizeConfig.boxsizehorizental! * 3),
                controller: TextEditingController(),
                decoration: InputDecoration(
                    contentPadding: const EdgeInsets.symmetric(horizontal: 30),
                    hintText: 'search for product',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(16),
                      borderSide: BorderSide.none,
                    ),
                    errorBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(16),
                      borderSide: BorderSide.none,
                    ),
                    disabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(16),
                      borderSide: BorderSide.none,
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(16),
                      borderSide: BorderSide.none,
                    ),
                    focusedErrorBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(16),
                      borderSide: BorderSide.none,
                    ),
                    hintStyle: kpopinsregular.copyWith(
                        color: klightgrey,
                        fontSize: SizeConfig.boxsizehorizental! * 3)),
              )),
              Container(
                  decoration: BoxDecoration(
                      color: kblue, borderRadius: BorderRadius.circular(16)),
                  child: IconButton(
                    onPressed: () {},
                    icon: SvgPicture.asset('assets/search.svg'),
                  ))
            ]),
          ),
          const SizedBox(
            height: 15,
          ),
          SizedBox(
            height: 14,
            child: ListView.builder(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemCount: 10,
                itemBuilder: (context, index) {
                  return Padding(
                      padding: const EdgeInsets.only(left: 38),
                      child: Text("#Tourism",
                          style: kpopinsmeduim.copyWith(
                              color: kgrey,
                              fontSize: SizeConfig.boxsizehorizental! * 3)));
                }),
          ),
          const SizedBox(
            height: 30,
          ),
          SizedBox(
            height: 304,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 10,
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return Container(
                    padding: const EdgeInsets.all(12),
                    height: 304,
                    width: 255,
                    margin: EdgeInsets.only(right: 20),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        color: kwhite,
                        boxShadow: [
                          BoxShadow(
                              color: kdarkblue.withOpacity(0.051),
                              offset: const Offset(0.0, 3.0),
                              blurRadius: 24.0,
                              spreadRadius: 0.0),
                        ]),
                    child: Column(
                      children: [
                        Container(
                          height: 164,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(16),
                              image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: NetworkImage(
                                      "https://www.worldtravelguide.net/wp-content/uploads/2017/03/shu-Tunisia-SidiBouSaid-760300645-1440x823.jpg"))),
                        ),
                        const SizedBox(
                          height: 18,
                        ),
                        Flexible(
                          child: Text(
                            "tourist destination for travel",
                            style: kpopinsbold.copyWith(
                                fontSize: SizeConfig.boxsizehorizental! * 3.5),
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                        const SizedBox(
                          height: 16,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Row(
                              children: <Widget>[
                                const CircleAvatar(
                                  radius: 19,
                                  backgroundColor: klightblue,
                                  backgroundImage: NetworkImage(
                                      "https://w7.pngwing.com/pngs/481/915/png-transparent-computer-icons-user-avatar-woman-avatar-computer-business-conversation-thumbnail.png"),
                                ),
                                const SizedBox(
                                  width: 12,
                                ),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Flutter UI",
                                      style: kpopinssemibold.copyWith(
                                          fontSize:
                                              SizeConfig.boxsizehorizental! *
                                                  3),
                                    ),
                                    Text(
                                      "DATE NOW",
                                      style: kpopinsregular.copyWith(
                                          color: kgrey,
                                          fontSize:
                                              SizeConfig.boxsizehorizental! *
                                                  3),
                                    )
                                  ],
                                ),
                              ],
                            ),
                            Container(
                              height: 38,
                              width: 38,
                              padding: const EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(16),
                                  color: klightwhite),
                              child: SvgPicture.asset('assets/share.svg'),
                            )
                          ],
                        ),
                      ],
                    ),
                  );
                }),
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text("design Travel App",
                  style: kpopinsbold.copyWith(
                      fontSize: SizeConfig.boxsizehorizental! * 4.5)),
              Text("View All",
                  style: kpopinsmeduim.copyWith(
                      color: kblue,
                      fontSize: SizeConfig.boxsizehorizental! * 3)),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          SizedBox(
            height: 88,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 10,
                itemBuilder: (context, index) {
                  return Container(
                    padding: const EdgeInsets.all(9),
                    margin: const EdgeInsets.only(right: 20),
                    width: 208,
                    height: 88,
                    decoration: BoxDecoration(
                        color: kwhite,
                        borderRadius: BorderRadius.circular(16),
                        boxShadow: [
                          BoxShadow(
                              color: kdarkblue.withOpacity(0.051),
                              offset: const Offset(0.0, 3.0),
                              blurRadius: 24.0,
                              spreadRadius: 0.0),
                        ]),
                    child: Row(
                      children: [
                        Container(
                          width: 70,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(16),
                              image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: NetworkImage(
                                      'https://www.planetware.com/photos-tiles/tunisia-sidi-bou-said-ocean-view.jpg'))),
                        ),
                        const SizedBox(
                          width: 12,
                        ),
                        Flexible(
                            child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "PLACE Name",
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              style: kpopinssemibold.copyWith(
                                  fontSize:
                                      SizeConfig.boxsizehorizental! * 3.5),
                            ),
                            SizedBox(
                              height: 3,
                            ),
                            Row(
                              children: [
                                SvgPicture.asset(
                                  'assets/eye.svg',
                                  width: 20,
                                ),
                                const SizedBox(
                                  width: 5,
                                ),
                                Text('23 987',
                                    style: kpopinsmeduim.copyWith(
                                        color: kgrey,
                                        fontSize:
                                            SizeConfig.boxsizehorizental! * 3))
                              ],
                            )
                          ],
                        ))
                      ],
                    ),
                  );
                }),
          )
        ],
      ),
    );
  }
}
