import 'package:flutter/material.dart';
import 'package:flutter_stuffs_2024/features/personalization/screens/profile/widgets/profile_menu.dart';
import 'package:flutter_stuffs_2024/shared/widgets/appbar/app_bar.dart';
import 'package:flutter_stuffs_2024/shared/widgets/images/t_circular_image.dart';
import 'package:flutter_stuffs_2024/shared/widgets/texts/section_heading.dart';
import 'package:flutter_stuffs_2024/utils/constants/colors.dart';
import 'package:flutter_stuffs_2024/utils/constants/image_strings.dart';
import 'package:flutter_stuffs_2024/utils/constants/sizes.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const TAppBar(
        showBackArrow: true,
        title: Text('Profile'),
      ),
      // Body
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              // Profile image
              SizedBox(
                width: double.infinity,
                child: Column(
                  children: [
                    const TCircularImage(
                        image: TImages.avatar, width: 100, height: 100),
                    TextButton(
                        onPressed: () {},
                        child: const Text('Change Profile Picture')),
                  ],
                ),
              ),

              const SizedBox(height: TSizes.spaceBetweenItems / 2),
              const Divider(),
              const SizedBox(height: TSizes.spaceBetweenItems),
              // Heading Profile details
              const TSectionHeading(
                  textColor: TColors.black,
                  title: 'Profile Details',
                  showActionButton: false),
              const SizedBox(height: TSizes.spaceBetweenItems),
              TProfileMenu(
                title: 'Name: ',
                value: 'John Doer',
                onTap: () {},
              ),

              TProfileMenu(
                title: 'Username: ',
                value: ' john.doe',
                onTap: () {},
              ),

              const SizedBox(height: TSizes.spaceBetweenItems / 2),
              const Divider(),
              const SizedBox(height: TSizes.spaceBetweenItems),
              const TSectionHeading(
                  textColor: TColors.black,
                  title: 'Personal Information',
                  showActionButton: false),
              TProfileMenu(
                title: 'User ID: ',
                value: ' 1234567890',
                onTap: () {},
                icon: Icons.copy,
              ),
              TProfileMenu(
                title: 'Email: ',
                value: ' john.doe@gmail.com',
                onTap: () {},
              ),
              TProfileMenu(
                title: 'Phone number: ',
                value: ' +234 123 456 7890',
                onTap: () {},
              ),
              TProfileMenu(
                title: 'Gender: ',
                value: 'Male',
                onTap: () {},
              ),
              TProfileMenu(
                title: 'Date of birth: ',
                value: ' 12th December, 1990',
                onTap: () {},
              ),
              const Divider(),
              const SizedBox(height: TSizes.spaceBetweenItems),
              Center(
                child: SizedBox(
                  width: double.infinity,
                  child: TextButton(
                    onPressed: () {},
                    child: const Text(
                      'Close Account',
                      style: TextStyle(color: Colors.red),
                    ),
                  ),
                ),
              )

              // Edit profile button
            ],
          ),
        ),
      ),
    );
  }
}
