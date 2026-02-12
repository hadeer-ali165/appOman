import 'package:oman_promo/common/enums/data_source_enum.dart';
import 'package:oman_promo/data/model/api_response.dart';

abstract class BannerServiceInterface{
  Future<ApiResponseModel<T>> getList<T>({required DataSourceEnum source});

}