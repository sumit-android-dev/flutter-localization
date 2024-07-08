import 'package:flutter/material.dart';
import 'package:flutter_localization/screen/detail_screen.dart';
import 'package:flutter_svg/svg.dart';

import '../core/widgets/language_switcher.dart';
import '../generated/l10n.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          S.current.appTitle,
          style: const TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.blue,
        actions: [
          Container(
            margin: const EdgeInsets.only(right: 16),
            child: const LanguageSwitcher(),
          ),
        ],
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: Colors.white70,
        child: ListView(
          children: [
            buildTransSection(context, S.current.payments, [
              buildServiceItem(context, "assets/svg/property_tax.svg",
                  S.current.property_tax),
              buildServiceItem(context, "assets/svg/water_charges.svg",
                  S.current.water_charges),
              buildServiceItem(
                  context, "assets/svg/shop.svg", S.current.shop_lease_rent),
              buildServiceItem(context, "assets/svg/payment_history.svg",
                  S.current.payment_history),
            ]),
            buildSection(context, S.current.request_certificates, [
              buildServiceItem(context, "assets/svg/marriage_certificate.svg",
                  S.current.marriage_certificate),
              buildServiceItem(context, "assets/svg/birth_certificate.svg",
                  S.current.birth_certificate),
              buildServiceItem(context, "assets/svg/death_certificate.svg",
                  S.current.death_certificate),
              buildServiceItem(context, "assets/svg/fire_safety.svg",
                  S.current.fire_safety_certificate),
            ]),
            buildTransSection(context, S.current.avail_new_services, [
              buildServiceItem(context, "assets/svg/new_water_connection.svg",
                  S.current.new_water_connection),
              buildServiceItem(context, "assets/svg/sewerage_connection.svg",
                  S.current.sewerage_connection),
              buildServiceItem(context, "assets/svg/new_property_registration.svg",
                  S.current.new_property_registration),
              buildServiceItem(context, "assets/svg/property_mutation.svg",
                  S.current.property_mutation),
            ]),
            buildSection(context, S.current.service_on_request, [
              buildServiceItem(context, "assets/svg/water_tanker.svg",
                  S.current.water_tanker_service),
              buildServiceItem(context, "assets/svg/septic_tank_cleaning.svg",
                  S.current.septic_tank_cleaning),
              buildServiceItem(context, "assets/svg/ambulance_service.svg",
                  S.current.ambulance_service),
              buildServiceItem(context, "assets/svg/funeral_van_service.svg",
                  S.current.funeral_van_service),
              buildServiceItem(context, "assets/svg/litter.svg",
                  S.current.litter_debris_collection),
              buildServiceItem(context, "assets/svg/litter.svg",
                  S.current.debris_collection_charges),
              buildServiceItem(context, "assets/svg/mobile_toilet_service.svg",
                  S.current.mobile_toilet_service),
              buildServiceItem(context, "assets/svg/auditorium_booking.svg",
                  S.current.auditorium_booking),
              buildServiceItem(context, "assets/svg/litter.svg",
                  S.current.litter_collection_charges),
              buildServiceItem(context, "assets/svg/evidence_certificate.svg",
                  S.current.evidence_certificate),
              buildServiceItem(context, "assets/svg/fire_extinguishing_service.svg",
                  S.current.fire_extinguishing_service),
              buildServiceItem(context, "assets/svg/hoarding_license.svg",
                  S.current.hoarding_license),
              buildServiceItem(context, "assets/svg/road_cutting_application.svg",
                  S.current.road_cutting_application),
              buildServiceItem(context, "assets/svg/citizen.svg",
                  S.current.citizen_grievances),
              buildServiceItem(context, "assets/svg/tree_cutting_transit.svg",
                  S.current.tree_cutting_transit),
              buildServiceItem(context, "assets/svg/trade_license_new_renew.svg",
                  S.current.trade_license_new_renew),
              buildServiceItem(
                  context, "assets/svg/new_swm_id.svg", S.current.new_swm_id),
              buildServiceItem(context, "assets/svg/movie_shooting_permission.svg",
                  S.current.movie_shooting_permission),
              buildServiceItem(
                  context, "assets/svg/more.svg", S.current.less),
            ]),
            buildTransSection(context, S.current.complaints, [
              buildServiceItem(context, "assets/svg/registration_new_complaint.svg",
                  S.current.registration_new_complaint),
              buildServiceItem(context, "assets/svg/complaints_status.svg",
                  S.current.complaints_status),
              buildServiceItem(context, "assets/svg/complaints_history.svg",
                  S.current.complaints_history),
            ]),
          ],
        ),
      ),
    );
  }

  Widget buildSection(
      BuildContext context, String title, List<Widget> children) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 0),
      color: const Color(0XFFF1F5F8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 8.0),
          Text(
            title,
            style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
          ),
          const SizedBox(height: 8.0),
          GridView.count(
            crossAxisCount: 4,
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            children: children,
          ),
        ],
      ),
    );
  }

  Widget buildTransSection(
      BuildContext context, String title, List<Widget> children) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 8.0),
          Text(
            title,
            style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
          ),
          const SizedBox(height: 8.0),
          GridView.count(
            crossAxisCount: 4,
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            children: children,
          ),
        ],
      ),
    );
  }

  Widget buildServiceItem(BuildContext context, String icon, String label) {
    return Container(
      child: InkWell(
        onTap: () {
          // Handle item tap
          Navigator.push(context, MaterialPageRoute(builder: (context)=> DetailScreen()));
        },
        child: Column(
          children: [
            SvgPicture.asset(
              icon,
              height: 35,
              width: 35,
            ),
            const SizedBox(height: 8.0),
            Text(
              label,
              textAlign: TextAlign.center,
              maxLines: 2,
              style: const TextStyle(fontSize: 12.0),
            ),
          ],
        ),
      ),
    );
  }
}
