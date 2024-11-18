// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;

import '../../module/home/data/datasource/home_datasource.dart' as _i1023;
import '../../module/home/data/repository/home_repository.dart' as _i447;
import '../../module/home/domain/datasource/ihome_datasource.dart' as _i863;
import '../../module/home/domain/repository/ihome_repository.dart' as _i821;

extension GetItInjectableX on _i174.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    gh.factory<_i863.IHomeDatasource>(() => _i1023.HomeDatasource());
    gh.factory<_i821.IHomeRepository>(
        () => _i447.HomeRepository(datasource: gh<_i863.IHomeDatasource>()));
    return this;
  }
}
