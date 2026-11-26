import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:spotify_clone/domain/app_colors.dart';
import 'package:spotify_clone/domain/ui_helper.dart';
import 'package:spotify_clone/ui/widgets/k_custom_button.dart';

class CreateAccountPage extends StatefulWidget {
  const CreateAccountPage({super.key});

  @override
  State<CreateAccountPage> createState() => _CreateAccountPageState();
}

class _CreateAccountPageState extends State<CreateAccountPage> {
  int selectedIndex = 0;
  List<Widget Function()> allPages = [];

  bool isNewsOptionSelected = false;
  bool isMaketingOptionSelected = false;

  @override
  void initState() {
    super.initState();

    allPages = [
      () => stepOneUI(),
      () => stepTwoUI(),
      () => stepThreeUI(),
      () => stepFourUI(
        newsSelected: isNewsOptionSelected,
        onNewsChanged: (value) {
          setState(() => isNewsOptionSelected = value);
        },
        marketingSelected: isMaketingOptionSelected,
        onMarketingChanged: (value) {
          setState(() => isMaketingOptionSelected = value);
        },
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.blackColor,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        foregroundColor: AppColors.whiteColor,
        centerTitle: true,
        title: Text(
          "Create account",
          style: TextStyle(fontSize: 20, fontWeight: .bold),
        ),
        leading: InkWell(
          onTap: () {
            if (selectedIndex > 0) {
              setState(() {
                selectedIndex--;
              });
            } else {
              Navigator.pop(context);
            }
          },
          child: Padding(
            padding: const EdgeInsets.all(12),
            child: SvgPicture.asset(
              "assets/icons/side_nav/Left.svg",
              height: 10,
              colorFilter: .mode(AppColors.whiteColor, .srcIn),
            ),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
        child: Column(
          children: [
            allPages[selectedIndex](),
            SizedBox(height: selectedIndex < 3 ? 60 : 170, width: .infinity),
            KCustomButton(
              onTap: () {
                if (selectedIndex < 3) {
                  setState(() {
                    selectedIndex++;
                  });
                } else {}
              },
              text: selectedIndex < 3 ? "Next" : "Create an account",
              mWidth: selectedIndex < 3 ? 100 : 180,
            ),
          ],
        ),
      ),
    );
  }
}

Widget stepOneUI() => Column(
  crossAxisAlignment: .start,
  children: [
    Text(
      "What\'s your email",
      style: TextStyle(
        fontSize: 26,
        fontWeight: .bold,
        color: AppColors.whiteColor,
      ),
    ),
    TextField(
      style: TextStyle(color: Colors.white, fontSize: 15, fontWeight: .w500),
      cursorColor: Colors.white,
      decoration: getCreateAccTextFieldDecoration(),
    ),
    SizedBox(height: 4),
    Text(
      "You will need to confirm this email later",
      style: TextStyle(color: Colors.white, fontSize: 11, fontWeight: .bold),
    ),
  ],
);
Widget stepTwoUI() => Column(
  crossAxisAlignment: .start,
  children: [
    Text(
      "Create a password",
      style: TextStyle(
        fontSize: 26,
        fontWeight: .bold,
        color: AppColors.whiteColor,
      ),
    ),
    TextField(
      style: TextStyle(color: Colors.white, fontSize: 15, fontWeight: .w500),
      cursorColor: Colors.white,
      decoration: getCreateAccTextFieldDecoration(),
    ),
    SizedBox(height: 4),
    Text(
      "Use atleast 8 character",
      style: TextStyle(color: Colors.white, fontSize: 11, fontWeight: .bold),
    ),
  ],
);
Widget stepThreeUI() => Column(
  crossAxisAlignment: .start,
  children: [
    Text(
      "What\'s your gender?",
      style: TextStyle(
        fontSize: 26,
        fontWeight: .bold,
        color: AppColors.whiteColor,
      ),
    ),
    Wrap(
      spacing: 10,
      children: [
        KCustomButton(
          onTap: () {},
          mHeight: 40,
          mWidth: 100,
          text: "Male",
          isOutlined: true,
          textColor: AppColors.textWhiteColor,
          bgColor: AppColors.primaryColor,
        ),
        KCustomButton(
          onTap: () {},
          mHeight: 40,
          mWidth: 100,
          text: "Female",
          isOutlined: true,
          textColor: AppColors.textWhiteColor,
          bgColor: AppColors.primaryColor,
        ),
        KCustomButton(
          onTap: () {},
          mHeight: 40,
          mWidth: 100,
          text: "Other",
          isOutlined: true,
          textColor: AppColors.textWhiteColor,
          bgColor: AppColors.primaryColor,
        ),
        Padding(
          padding: const EdgeInsets.only(top: 8),
          child: KCustomButton(
            onTap: () {},
            mHeight: 40,
            mWidth: 160,
            text: "Prefer not to say",
            isOutlined: true,
            textColor: AppColors.textWhiteColor,
            bgColor: AppColors.primaryColor,
          ),
        ),
      ],
    ),
  ],
);
Widget stepFourUI({
  required bool newsSelected,
  required ValueChanged<bool> onNewsChanged,
  required bool marketingSelected,
  required ValueChanged<bool> onMarketingChanged,
}) => Column(
  crossAxisAlignment: .start,
  children: [
    Text(
      "What's your name?",
      style: TextStyle(
        fontSize: 26,
        fontWeight: .bold,
        color: AppColors.whiteColor,
      ),
    ),
    TextField(
      style: TextStyle(color: Colors.white, fontSize: 15, fontWeight: .w500),
      cursorColor: Colors.white,
      decoration: getCreateAccTextFieldDecoration(),
    ),
    SizedBox(height: 4),
    Text(
      "This appears on your spotify profile.",
      style: TextStyle(color: Colors.white, fontSize: 11, fontWeight: .bold),
    ),
    Padding(
      padding: const EdgeInsets.symmetric(vertical: 30),
      child: Divider(),
    ),
    Column(
      crossAxisAlignment: .start,
      spacing: 18,
      children: [
        Text(
          "By tapping on “Create account”, you agree to the spotify Terms of Use.",
          style: TextStyle(
            color: AppColors.textWhiteColor,
            fontSize: 12,
            fontWeight: .bold,
          ),
        ),
        Text(
          "Terms of Use.",
          style: TextStyle(
            color: AppColors.primaryColor,
            fontSize: 13,
            fontWeight: .bold,
          ),
        ),
        Text(
          "To learn more about how Spotify collect, uses, shares and protects your personal data, Please see the Spotify Privacy Policy.",
          style: TextStyle(
            color: AppColors.textWhiteColor,
            fontSize: 12,
            fontWeight: .bold,
          ),
        ),
        Text(
          "Privacy Policy",
          style: TextStyle(
            color: AppColors.primaryColor,
            fontSize: 13,
            fontWeight: .bold,
          ),
        ),
        _ConsentOption(
          text: "Please send me news and offers from Spotify.",
          value: newsSelected,
          onChanged: onNewsChanged,
        ),
        _ConsentOption(
          text: "Share my registration data with Spotify's content providers for marketing purposes.",
          value: marketingSelected,
          onChanged: onMarketingChanged,
        ),
      ],
    ),
  ],
);

class _ConsentOption extends StatelessWidget {
  const _ConsentOption({
    required this.text,
    required this.value,
    required this.onChanged,
  });

  final String text;
  final bool value;
  final ValueChanged<bool> onChanged;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Text(
            text,
            style: TextStyle(
              color: AppColors.textWhiteColor,
              fontSize: 12,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Checkbox(
          value: value,
          onChanged: (newValue) {
            if (newValue != null) onChanged(newValue);
          },
          shape: const CircleBorder(),
          side: BorderSide(color: AppColors.greyColor, width: 1.5),
          activeColor: AppColors.primaryColor,
          checkColor: AppColors.blackColor,
        ),
      ],
    );
  }
}
