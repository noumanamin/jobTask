
const kOtpConfirmation = "Please enter the 6-Digit code that is sent to your number";
const kAppTitle ="Kedu App";
const kAgreeToTerms="I agree to the Terms & conditions and Privacy policy.";
const kEmailRegEx =
    r"^([\w-\.]+)@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.)|(([\w-]+\.)+))([a-zA-Z]{2,4}|[0-9]{1,3})(\]?)$";
const kOnlyCharsRegEx =
    r"^(?:[a-zA-Z\s@,=%$#&_\u0600-\u06FF\u0750-\u077F\u08A0-\u08FF\uFB50-\uFDCF\uFDF0-\uFDFF\uFE70-\uFEFF]|(?:\uD802[\uDE60-\uDE9F]|\uD83B[\uDE00-\uDEFF])){0,30}$";
const kRegistrationNoRegEx = r"^([A-Z0-9 _]*[A-Z0-9][A-Z0-9 _]*$)";
const kPhoneNumberRegEx = r"^([0-9\(\)\/\+ \-]*)$";
const kNumericRegEx = r"[+-]?([0-9]*[.])?[0-9]+";
const kPriceRegEx= r"^(?!^0\.00$)(([1-9][\d]{0,6})|([0]))\.[\d]{2}$";
const kRequired="Required";
const kInvalidPrice="Invalid";
const kPasswordNotMatch="Password not match";
const kInvalidEmail="Invalid email";
const kOnlyCharsAllowed="Only characters allowed";
const kInvalidPhoneNumber="Invalid phone number";
const kMinimumPassword="Minimum 8 characters required";


const kBackgroundImage = "assets/images/intro.png";
const kLogoImage = "assets/images/logo.PNG";
const kAuthImage = "assets/images/auth.png";
const kSplashLogo = "assets/images/splash_bg.gif";
const kMusicTvChannel= "http://100.36.109.12:8080/kedutvchannel.m3u8";