// class TextFormFild extends StatefulWidget {
//   final String name;
//   final String errorname;
//   final String hintName;
//   const TextFormFild({super.key, required this.name, required this.errorname, required this.hintName});

//   @override
//   State<TextFormFild> createState() => _TextFormFildState();
// }

// class _TextFormFildState extends State<TextFormFild> {
//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       mainAxisAlignment: MainAxisAlignment.start,
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         Text(widget.name,
//             style: MyStyles.segoeUI400
//                 .copyWith(color: MyColors.cFFFFFF, fontSize: 16)),
//         const SizedBox(
//           height: 1,
//         ),
//         SizedBox(
//           width: 278,
//           child: TextFormField(
//             keyboardType: TextInputType.text,
//             obscureText: false,
//             validator: (value) {
//             if(value == null || value.isEmpty) {
//               return widget.errorname;
//             }
//             return null;
//           },
//             decoration: InputDecoration(
//               errorStyle: const TextStyle(color: Colors.amber, fontSize: 14),
//               hintText: widget.hintName,
//               suffix: Container(
//                 width: 35,
//                 height: 35,
//                 decoration: BoxDecoration(
//                   borderRadius: BorderRadius.circular(9),
//                   color: MyColors.cC4C4C4F,
//                 ),
//                 child: Center(
//                     child: Text(
//                   "✓",
//                   style: MyStyles.segoeUI400.copyWith(
//                       fontSize: 20,
//                       color: MyColors.cFF3535,
//                       fontWeight: FontWeight.w700),
//                 )),
//               ),
//               filled: true,
//               fillColor: MyColors.cFFFFFF,
//               border: const OutlineInputBorder(
//                   borderRadius: BorderRadius.all(Radius.circular(8))),
//             ),
//           ),
//         ),
//       ],
//     );
//   }
// }

// class IniciarCeuntePage extends StatefulWidget {
//   const IniciarCeuntePage({super.key});

//   @override
//   State<IniciarCeuntePage> createState() => _IniciarCeuntePageState();
// }
// final _formkey = GlobalKey<FormState>();
// class _IniciarCeuntePageState extends State<IniciarCeuntePage> {
//   @override
//   Widget build(BuildContext context) {
//     return Form(
//       key: _formkey,
//       child: Scaffold(
//         backgroundColor: Colors.white,
//         body: SingleChildScrollView(
//           physics: const NeverScrollableScrollPhysics(),
//           child: Column(
//               mainAxisAlignment: MainAxisAlignment.start,
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Container(
//                   height: MediaQuery.of(context).size.height * 0.85,
//                   width: double.infinity,
//                   decoration: const BoxDecoration(
//                       image: DecorationImage(
//                     image: AssetImage(MyImages.imageBackground2),
//                     fit: BoxFit.fill,
//                   )),
//                   child: Column(
//                     crossAxisAlignment: CrossAxisAlignment.center,
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: [
//                       const SizedBox(height: 30,),
//                       Image.asset(
//                         MyImages.imageDomestikaLogo,
//                         width: 301,
//                         height: 60,
//                       ),
//                       const SizedBox(
//                         height: 30,
//                       ),
//                       Text("Bienvenido/a\nde nuevo", style: MyStyles.segoeUI400.copyWith(fontSize: 38, fontWeight: FontWeight.w600, color: MyColors.cFFFFFF, height: 1, letterSpacing: 0.7),
//                       ),
//                       const SizedBox(
//                         height: 10,
//                       ),
//                       const TextFormFild(name: "Correo electrónico", errorname: "Entyer your electrónico",hintName: "correo@email.com"),
//                       const SizedBox(
//                         height: 10,
//                       ),
//                       const TextFormFild(name: "Contraseña", errorname: "Entyer your Contraseña", hintName: "**************",),
//                       const SizedBox(
//                         height: 19,
//                       ),
//                       Row(
//                         mainAxisAlignment: MainAxisAlignment.center,
//                         crossAxisAlignment: CrossAxisAlignment.center,
//                         children: [
//                           SvgPicture.asset(MyImages.iconLine),
//                           const SizedBox(
//                             width: 10,
//                           ),
//                           Text("O regístrate con",
//                               style: MyStyles.segoeUI400.copyWith(
//                                   fontWeight: FontWeight.w400,
//                                   fontSize: 16,
//                                   letterSpacing: 0.1,
//                                   color: MyColors.cFFFFFF)),
//                           const SizedBox(
//                             width: 10,
//                           ),
//                           SvgPicture.asset(MyImages.iconLine),
//                         ],
//                       ),
//                       const SizedBox(height: 20,),
//                       Row(
//                         mainAxisAlignment: MainAxisAlignment.center,
//                         crossAxisAlignment: CrossAxisAlignment.center,
//                         children: const [