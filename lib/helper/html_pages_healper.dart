
import 'package:oman_promo/features/splash/controllers/splash_controller.dart';
import 'package:oman_promo/features/splash/domain/models/business_pages_model.dart';
import 'package:oman_promo/main.dart';
import 'package:provider/provider.dart';

class HtmlPagesHelper{

  final splashController = Provider.of<SplashController>(Get.context!, listen: false);

  BusinessPageModel? hasPrivacyPolicy = Provider.of<SplashController>(Get.context!, listen: false)
      .businessPages!.firstWhere((page) => page.slug == 'privacy-policy');

}