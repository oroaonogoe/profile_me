import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:logger/logger.dart';
import 'package:url_launcher/url_launcher.dart';

var logger = Logger();

final TextEditingController _firstNameController = TextEditingController();

final TextEditingController _lastNameController = TextEditingController();

final TextEditingController _emailController = TextEditingController();

final TextEditingController _phoneController = TextEditingController();

final TextEditingController _messageController = TextEditingController();

final formKey = GlobalKey<FormState>();

class TabsWeb extends StatefulWidget {
  const TabsWeb({super.key, required this.title, required this.route});

  final String title;
  final String route;

  @override
  State<TabsWeb> createState() => _TabsWebState();
}

class _TabsWebState extends State<TabsWeb> {
  bool isSelected = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).pushNamed(widget.route);
      },
      child: MouseRegion(
        onEnter: (_) {
          setState(() {
            isSelected = true;
          });
        },
        onExit: (_) {
          setState(() {
            isSelected = false;
          });
        },
        child: AnimatedDefaultTextStyle(
          duration: Duration(milliseconds: 100),
          curve: Curves.elasticIn,
          style: isSelected
              ? GoogleFonts.roboto(
                  shadows: [
                    Shadow(
                      color: Colors.black,
                      offset: Offset(0, -8),
                    ),
                  ],
                  color: Colors.transparent,
                  fontSize: 25.0,
                  decoration: TextDecoration.underline,
                  decorationThickness: 2,
                  decorationColor: Colors.tealAccent,
                )
              : GoogleFonts.roboto(
                  color: Colors.black,
                  fontSize: 20.0,
                ),
          child: Text(widget.title),
        ),
      ),
    );
  }
}

class TabsMobile extends StatefulWidget {
  const TabsMobile({super.key, required this.text, required this.route});

  final String text;
  final String route;

  @override
  State<TabsMobile> createState() => _TabsMobileState();
}

class _TabsMobileState extends State<TabsMobile> {
  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: () {
        Navigator.of(context).pushNamed(widget.route);
      },
      elevation: 20.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(5.0),
      ),
      height: 50.0,
      minWidth: 200.0,
      color: Colors.black,
      child: Text(
        widget.text,
        style: GoogleFonts.openSans(fontSize: 20.0, color: Colors.white),
      ),
    );
  }
}

class SansBold extends StatelessWidget {
  const SansBold({
    super.key,
    required this.text,
    required this.size,
  });

  final String text;
  final double size;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.openSans(fontSize: size, fontWeight: FontWeight.bold),
    );
  }
}

class Sans extends StatelessWidget {
  const Sans({
    super.key,
    required this.text,
    required this.size,
  });

  final String text;
  final double size;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.openSans(fontSize: size),
    );
  }
}

class TextForm extends StatelessWidget {
  const TextForm({
    super.key,
    required this.text,
    required this.containerWidth,
    required this.hintText,
    this.maxLine,
    required this.controller,
    required this.validator,
  });

  final String text;
  final double containerWidth;
  final String hintText;
  final int? maxLine;
  final TextEditingController controller;
  final FormFieldValidator validator;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Sans(text: text, size: 16.0),
        SizedBox(
          height: 5,
        ),
        SizedBox(
          width: containerWidth,
          child: TextFormField(
            validator: validator,
            controller: controller,
            maxLines: maxLine ?? maxLine,
            decoration: InputDecoration(
              errorBorder: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(15.0)),
                borderSide: BorderSide(color: Colors.red),
              ),
              focusedErrorBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.red),
                borderRadius: BorderRadius.all(Radius.circular(10.0)),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(10.0)),
                borderSide: BorderSide(color: Colors.teal),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(15.0)),
                borderSide: BorderSide(color: Colors.tealAccent, width: 2),
              ),
              hintText: hintText,
              hintStyle: GoogleFonts.poppins(fontSize: 14.0),
            ),
          ),
        ),
      ],
    );
  }
}

class AnimatedCard extends StatefulWidget {
  const AnimatedCard(
      {super.key,
      required this.imagePath,
      this.text,
      this.fit,
      this.reverse,
      this.height,
      this.width});

  final String imagePath;
  final String? text;
  final BoxFit? fit;
  final bool? reverse;
  final double? height;
  final double? width;

  @override
  State<AnimatedCard> createState() => _AnimatedCardState();
}

class _AnimatedCardState extends State<AnimatedCard>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller = AnimationController(
    vsync: this,
    duration: Duration(seconds: 4),
  )..repeat(reverse: true);

  late final Animation<Offset> _animation = Tween(
    begin: widget.reverse == true ? Offset(0, 0.08) : Offset.zero,
    end: widget.reverse == true ? Offset.zero : Offset(0, 0.08),
  ).animate(_controller);

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SlideTransition(
      position: _animation,
      child: Card(
        color: Colors.white,
        elevation: 30.0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.0),
          side: BorderSide(color: Colors.tealAccent),
        ),
        shadowColor: Colors.tealAccent,
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(
                widget.imagePath,
                width: widget.width ?? 200.0,
                height: widget.height ?? 200.0,
                fit: widget.fit,
              ),
              SizedBox(height: 10),
              SansBold(size: 15.0, text: widget.text!),
            ],
          ),
        ),
      ),
    );
  }
}

IconButton urlLauncher(String imagePath, String url) {
  return IconButton(
    icon: SvgPicture.asset(
      imagePath,
      width: 35,
      colorFilter: ColorFilter.mode(Colors.black, BlendMode.modulate),
    ),
    onPressed: () async {
      await launchUrl(Uri.parse(url));
    },
  );
}

Container tealContainer(String text) {
  return Container(
    decoration: BoxDecoration(
      border: Border.all(
        color: Colors.tealAccent,
        style: BorderStyle.solid,
        width: 2.0,
      ),
      borderRadius: BorderRadius.circular(5.0),
    ),
    padding: EdgeInsets.all(7.0),
    child: Text(text, style: GoogleFonts.openSans(fontSize: 15.0)),
  );
}

class AbelCustom extends StatelessWidget {
  const AbelCustom(
      {super.key,
      required this.text,
      required this.size,
      this.color,
      this.fontWeight});

  final dynamic text;
  final dynamic size;
  final dynamic color;
  final dynamic fontWeight;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.abel(
        fontSize: size,
        color: color ?? Colors.black,
        fontWeight: fontWeight ?? FontWeight.normal,
      ),
    );
  }
}

class BlogPost extends StatefulWidget {
  const BlogPost(
      {super.key,
      required this.left,
      required this.right,
      required this.top,
      required this.all,
      required this.title,
      required this.body});

  final double left;
  final double right;
  final double top;
  final double all;
  final String title;
  final String body;

  @override
  State<BlogPost> createState() => _BlogPostState();
}

class _BlogPostState extends State<BlogPost> {
  bool expand = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
          left: widget.left, right: widget.right, top: widget.top),
      child: Container(
        padding: EdgeInsets.all(widget.all),
        decoration: BoxDecoration(
          border: Border.all(
            style: BorderStyle.solid,
            width: 1.0,
            color: Colors.black,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 5.0),
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(3.0),
                  ),
                  child: AbelCustom(
                    text: widget.title,
                    size: 25.0,
                    color: Colors.white,
                  ),
                ),
                IconButton(
                  onPressed: () {
                    setState(() {
                      expand = !expand;
                    });
                  },
                  icon: Icon(Icons.arrow_drop_down_circle_outlined),
                  color: Colors.black,
                ),
              ],
            ),
            SizedBox(height: 7.0),
            Text(
              widget.body,
              style: GoogleFonts.openSans(fontSize: 15.0),
              maxLines: expand == true ? null : 3,
              overflow:
                  expand == true ? TextOverflow.visible : TextOverflow.ellipsis,
            ),
          ],
        ),
      ),
    );
  }
}

class ContactMe extends StatelessWidget {
  const ContactMe({
    super.key,
    required this.deviceWidth,
  });

  final double deviceWidth;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  TextForm(
                    containerWidth: 350,
                    text: "First name",
                    hintText: "Please enter your first name",
                    controller: _firstNameController,
                    validator: (text) {
                      if (text.toString().isEmpty) {
                        return "First name is required.";
                      }
                      return null;
                    },
                  ),
                  SizedBox(height: 15),
                  TextForm(
                    text: "Email",
                    containerWidth: 350,
                    hintText: "Please enter your email address",
                    controller: _emailController,
                    validator: (text) {
                      if (text.toString().isEmpty) {
                        return "Email is required.";
                      }
                      return null;
                    },
                  ),
                ],
              ),
              Column(
                children: [
                  TextForm(
                    containerWidth: 350.0,
                    text: "Last name",
                    hintText: "Please enter your last name",
                    controller: _lastNameController,
                    validator: (text) {
                      if (text.toString().isEmpty) {
                        return "Last name is required.";
                      }
                      return null;
                    },
                  ),
                  SizedBox(height: 15.0),
                  TextForm(
                    text: "Phone",
                    containerWidth: 350.0,
                    hintText: "Please enter your phone number",
                    controller: _phoneController,
                    validator: (text) {
                      if (text.toString().isEmpty) {
                        return "Phone number is required.";
                      }
                      return null;
                    },
                  ),
                ],
              ),
            ],
          ),
          TextForm(
            text: "Message",
            containerWidth: deviceWidth / 1.5,
            hintText: "Please enter your message",
            maxLine: 10,
            controller: _messageController,
            validator: (text) {
              if (text.toString().isEmpty) {
                return "Please leave a message";
              }
              return null;
            },
          ),
          SizedBox(height: 20.0),
          MaterialButton(
            onPressed: () async {
              logger.d(_firstNameController.text);
              final addData = AddDataFireStore();
              if (formKey.currentState!.validate()) {
                await addData.addResponse(
                    _firstNameController.text,
                    _lastNameController.text,
                    _emailController.text,
                    _phoneController.text,
                    _messageController.text);
                formKey.currentState!.reset();
                if (context.mounted) {
                  showDialog(
                    context: context,
                    builder: (context) => AlertDialog(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0)),
                      title: SansBold(text: "Message submitted", size: 20.0),
                    ),
                  );
                }
              }
            },
            elevation: 20.0,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
            height: 60.0,
            minWidth: 200.0,
            color: Colors.tealAccent,
            child: SansBold(text: "Submit", size: 20.0),
          ),
          SizedBox(height: 10.0),
        ],
      ),
    );
  }
}

class ContactMeMobile extends StatelessWidget {
  const ContactMeMobile({
    super.key,
    required this.widthdevice,
  });

  final double widthdevice;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Wrap(
        runSpacing: 20.0,
        spacing: 25.0,
        alignment: WrapAlignment.center,
        children: [
          SansBold(text: "Contact me", size: 35.0),
          TextForm(
            text: "First Name",
            containerWidth: widthdevice / 1.4,
            hintText: "Please type first name",
            controller: _firstNameController,
            validator: (text) {
              if (text.toString().isEmpty) {
                return "First name is required.";
              }
              return null;
            },
          ),
          TextForm(
            text: "Last Name",
            containerWidth: widthdevice / 1.4,
            hintText: "Please type last name",
            controller: _lastNameController,
            validator: (text) {
              if (text.toString().isEmpty) {
                return "Last name is required.";
              }
              return null;
            },
          ),
          TextForm(
            text: "Email Name",
            containerWidth: widthdevice / 1.4,
            hintText: "Please type email name",
            controller: _emailController,
            validator: (text) {
              if (text.toString().isEmpty) {
                return "Email is required.";
              }
              return null;
            },
          ),
          TextForm(
            text: "Phone number",
            containerWidth: widthdevice / 1.4,
            hintText: "Please type phone number",
            controller: _phoneController,
            validator: (text) {
              if (text.toString().isEmpty) {
                return "Phone number is required.";
              }
              return null;
            },
          ),
          TextForm(
            text: "Message",
            containerWidth: widthdevice / 1.4,
            hintText: "Please type Message",
            maxLine: 10,
            controller: _messageController,
            validator: (text) {
              if (text.toString().isEmpty) {
                return "Please leave a message";
              }
              return null;
            },
          ),
          MaterialButton(
            onPressed: () async {
              logger.d(_firstNameController.text);
              final addData = AddDataFireStore();
              if (formKey.currentState!.validate()) {
                if (await addData.addResponse(
                    _firstNameController.text,
                    _lastNameController.text,
                    _emailController.text,
                    _phoneController.text,
                    _messageController.text)) {
                  formKey.currentState!.reset();
                  if (context.mounted) {
                    dialogError(context, "Message sent successfully.");
                  }
                } else {
                  if (context.mounted) {
                    dialogError(context, "Message failed to sent.");
                  }
                }
              }
            },
            elevation: 20.0,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0)),
            height: 16.0,
            minWidth: widthdevice / 2.2,
            color: Colors.tealAccent,
            child: SansBold(text: "Submit", size: 20.0),
          ),
        ],
      ),
    );
  }
}

class AddDataFireStore {
  CollectionReference response =
      FirebaseFirestore.instance.collection('messages');

  Future<bool> addResponse(final firstName, final lastName, final email,
      final phone, final messages) async {
    return response.add({
      'first name': firstName,
      'last name': lastName,
      'email': email,
      'phone': phone,
      'messages': messages
    }).then(
      (value) {
        logger.d("Success");
        return true;
      },
    ).catchError((error) {
      logger.d(error);
      return true;
    });
  }
}

Future dialogError(BuildContext context, String title) {
  return showDialog(
    context: context,
    builder: (context) => AlertDialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
      title: SansBold(text: title, size: 20.0),
    ),
  );
}
