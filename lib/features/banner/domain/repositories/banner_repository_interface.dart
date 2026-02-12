import 'package:oman_promo/common/enums/data_source_enum.dart';
import 'package:oman_promo/data/model/api_response.dart';
import 'package:oman_promo/interface/repo_interface.dart';

abstract class BannerRepositoryInterface<T> implements RepositoryInterface{
  Future<ApiResponseModel<T>> getBannerList<T>({required DataSourceEnum source});


}