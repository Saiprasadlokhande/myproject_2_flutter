import 'package:myproject_2_flutter/import_helper.dart';
import 'package:myproject_2_flutter/widgets/glassEffect.dart';

class MyHomeView extends StatefulWidget {
  const MyHomeView({Key? key}) : super(key: key);

  @override
  State<MyHomeView> createState() => _MyHomeViewState();
}

class _MyHomeViewState extends State<MyHomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      appBar: AppBar(
          leading: GestureDetector(
              onTap: () {
                context.pop();
              },
              child: const Icon(Icons.arrow_back_ios, color: kTitleColor)),
          title: customText(msg: 'My Room'),
          backgroundColor: kPrimaryColor,
          elevation: 0),
      body: SizedBox(
        height: 100.h,
        width: 100.w,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: ListView(
            shrinkWrap: true,
            physics: const BouncingScrollPhysics(),
            children: [
              SizedBox(
                height: 20.h,
                child: ListView.separated(
                  shrinkWrap: false,
                  padding: EdgeInsets.zero,
                  physics: const BouncingScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  itemCount: 4,
                  itemBuilder: (_, i) {
                    return glassContainer(height: 15.h, width: 90.w);
                  },
                  separatorBuilder: (_, i) {
                    return SizedBox(
                      width: 10.w,
                    );
                  },
                ),
              ),
              Container(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      customBoxTile(
                          title: 'Electricity Bill',
                          icon: Icons.electric_bolt,
                          iconInLead: false,
                          subtitle:
                              'Pay bill timely to avoid unwanted darkness'),
                      SizedBox(
                        height: 5.h,
                      ),
                      customBoxTile(
                          title: 'Gas Bill',
                          icon: Icons.gas_meter,
                          iconInLead: true,
                          subtitle: 'Never let your cooking stop'),
                      SizedBox(
                        height: 5.h,
                      ),
                      customBoxTile(
                          title: 'Maintenance',
                          icon: Icons.event,
                          iconInLead: false,
                          subtitle:
                              'Regular maintenance will help your society'),
                      SizedBox(
                        height: 5.h,
                      ),
                      customBoxTile(
                          title: 'Services',
                          icon: Icons.groups_sharp,
                          iconInLead: true,
                          subtitle:
                              'Plumbing, Electrician, or anyother service\nOur partners are ready to serve you'),
                      SizedBox(
                        height: 5.h,
                      ),
                      customBoxTile(
                          title: 'Sell your room',
                          icon: Icons.exit_to_app,
                          iconInLead: false,
                          subtitle:
                              'Just click and relax,\nOur agents will bring you best offer'),
                    ],
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
