import 'package:dio/dio.dart';
import 'package:oman_promo/data/datasource/remote/dio/dio_client.dart';
import 'package:oman_promo/data/datasource/remote/exception/api_error_handler.dart';
import 'package:oman_promo/data/model/api_response.dart';
import 'package:oman_promo/features/onboarding/domain/models/onboarding_model.dart';
import 'package:oman_promo/features/onboarding/domain/repositories/onboarding_repository_interface.dart';
import 'package:oman_promo/localization/language_constrants.dart';
import 'package:oman_promo/main.dart';
import 'package:oman_promo/utill/images.dart';

class OnBoardingRepository implements OnBoardingRepositoryInterface{
  final DioClient? dioClient;
  OnBoardingRepository({required this.dioClient});

  @override
  Future<ApiResponseModel> getList({int? offset}) async {
    try {
      List<OnboardingModel> onBoardingList = [
        OnboardingModel(Images.onBoarding1,
          getTranslated('on_boarding_title_one', Get.context!),
          getTranslated('on_boarding_description_one', Get.context!)),
        OnboardingModel(Images.onBoarding2,
          getTranslated('on_boarding_title_two', Get.context!),
          getTranslated('on_boarding_description_two', Get.context!)),
        OnboardingModel(Images.onBoarding3,
          getTranslated('on_boarding_title_three', Get.context!),
          getTranslated('on_boarding_description_three', Get.context!)),
      ];

      Response response = Response(requestOptions: RequestOptions(path: ''), data: onBoardingList,statusCode: 200);
      return ApiResponseModel.withSuccess(response);
    } catch (e) {
      return ApiResponseModel.withError(ApiErrorHandler.getMessage(e));
    }
  }

  @override
  Future add(value) {
    // TODO: implement add
    throw UnimplementedError();
  }

  @override
  Future delete(int id) {
    // TODO: implement delete
    throw UnimplementedError();
  }

  @override
  Future get(String id) {
    // TODO: implement get
    throw UnimplementedError();
  }


  @override
  Future update(Map<String, dynamic> body, int id) {
    // TODO: implement update
    throw UnimplementedError();
  }
}