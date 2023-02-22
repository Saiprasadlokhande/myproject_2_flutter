import 'package:myproject_2_flutter/import_helper.dart';
import 'package:serverpod_auth_google_flutter/serverpod_auth_google_flutter.dart';
// import 'package:serverpod_auth_google_flutter/serverpod_auth_google_flutter.dart';

class LoginView extends StatefulWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 50.h,
        width: 100.w,
        decoration: const BoxDecoration(color: kPrimaryColor),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            SignInWithGoogleButton(
              // style: ButtonStyle(),
              caller: sessionManager.caller,
              additionalScopes: const [
                "https://www.googleapis.com/auth/userinfo.email",
                "https://www.googleapis.com/auth/userinfo.profile"
              ],
              clientId:
                  "650422191742-b9q24g8l4d3ntmr8jdii5mn8cmmon8ih.apps.googleusercontent.com",
              serverClientId:
                  "650422191742-vqb2de20ths7994udfeb3rfb565m68kc.apps.googleusercontent.com",
              onSignedIn: () {
                router.pushReplacementNamed(splashscreen);
              },
              onFailure: () {
                router.pushReplacementNamed(splashscreen);
              },
              redirectUri: Uri.parse(""),
            ),

            ///Sign in with firebase button not working
            // SignInWithFirebaseButton(
            //   // style: ButtonStyle(),
            //   providerConfigs: const [
            //     GoogleProviderConfiguration(
            //         clientId:
            //             "com.googleusercontent.apps.650422191742-vqb2de20ths7994udfeb3rfb565m68kc",
            //         scopes: [
            //           "https://www.googleapis.com/auth/userinfo.email",
            //           "https://www.googleapis.com/auth/userinfo.profile"
            //         ]),
            //   ],
            //   caller: sessionManager.caller,
            //   // additionalScopes: const [
            //   //   "https://www.googleapis.com/auth/userinfo.email",
            //   //   "https://www.googleapis.com/auth/userinfo.profile"
            //   // ],
            //   // clientId:
            //   //     "650422191742-b9q24g8l4d3ntmr8jdii5mn8cmmon8ih.apps.googleusercontent.com",
            //   // serverClientId:
            //   //     "650422191742-vqb2de20ths7994udfeb3rfb565m68kc.apps.googleusercontent.com",
            //   // redirectUri: Uri.parse(""),
            //   onSignedIn: () {
            //     if (kDebugMode) {
            //       print(sessionManager.signedInUser!.fullName!);
            //     }
            //     router.pushReplacementNamed(splashscreen);
            //   },
            //   onFailure: () {
            //     router.pushReplacementNamed(splashscreen);
            //   },
            // ),
            ///
            // SizedBox(
            //   height: 2.5.h,
            // ),
            // if (Platform.isIOS)
            //   SignInWithAppleButton(
            //     // style: ButtonStyle(),
            //     caller: sessionManager.caller,
            //
            //     onSignedIn: () {
            //       router.pushReplacementNamed(splashscreen);
            //     },
            //     onFailure: () {
            //       router.pushReplacementNamed(splashscreen);
            //     },
            //   ),
          ],
        )
        // SignInScreen(
        //   providers: [
        //     GoogleProvider(
        //       clientId:
        //           "650422191742-b9q24g8l4d3ntmr8jdii5mn8cmmon8ih.apps.googleusercontent.com",
        //     )
        //   ],
        //   actions: [
        //     AuthStateChangeAction<SignedIn>((context, state) async {
        //       // auth.signInWithFirebase(
        //       //     caller: sessionManager.caller, providerConfigs: [], context: context);
        //       // client.modules.auth = state.user;
        //       // var userId = await sessionManager.caller.auth.authorizedUserId;
        //       router.pushReplacementNamed(splashscreen);
        //     }),
        //   ],
        // ),

        ///
        // Column(
        //   mainAxisSize: MainAxisSize.min,
        //   mainAxisAlignment: MainAxisAlignment.center,
        //   crossAxisAlignment: CrossAxisAlignment.center,
        //   children: [
        //     SignInScreen(
        //       providers: [
        //         GoogleProvider(
        //             clientId:
        //                 "650422191742-vqb2de20ths7994udfeb3rfb565m68kc.apps.googleusercontent.com")
        //       ],
        //     ),
        //     //     GoogleSignInButton(
        //     //     clientId: 'clientId',
        //     //     loadingIndicator: CircularProgressIndicator(),
        //     //     onSignedIn: (UserCredential credential) {
        //     //       // perform navigation.
        //     //     }
        //     // ),
        //     ///
        //     // SignInWithGoogleButton(
        //     //   caller: client.modules.auth,
        //     //   clientId:
        //     //       '650422191742-b9q24g8l4d3ntmr8jdii5mn8cmmon8ih.apps.googleusercontent.com',
        //     //   serverClientId:
        //     //       '650422191742-vqb2de20ths7994udfeb3rfb565m68kc.apps.googleusercontent.com',
        //     //   onSignedIn: () {
        //     //     context.goNamed(splashscreen);
        //     //   },
        //     //   onFailure: () {},
        //     //   redirectUri: Uri.parse("http://localhost:5000"),
        //     // ),
        //     ///
        //     // ),
        //     // SignInWithFirebaseButton(
        //     //   providerConfigs: [Google()],
        //     //
        //     //   caller: client.modules.auth,
        //     //   // debug: true,
        //     //   // clientId:
        //     //   //     '650422191742-b9q24g8l4d3ntmr8jdii5mn8cmmon8ih.apps.googleusercontent.com',
        //     //   // serverClientId:
        //     //   //     '650422191742-vqb2de20ths7994udfeb3rfb565m68kc.apps.googleusercontent.com',
        //     //   //
        //     //   // ///910380855041-ufb3se3f44q1utuf81t34v5h8hpfoi6v.apps.googleusercontent.com
        //     //
        //     //   onSignedIn: () {
        //     //     context.goNamed(splashscreen);
        //     //   },
        //     //   onFailure: () {},
        //     // ),
        //     // SignInWithGoogleButton(),
        //     SizedBox(height: 2.h),
        //     // SignInWithAppleButton(
        //     //   caller: client.modules.auth,
        //     //   onSignedIn: () {},
        //     //   onFailure: () {},
        //     // )
        //   ],
        // ),
        );
  }
}
