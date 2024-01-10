import '../../../../core/either/either.dart';
import '../../../../core/failure/failure.dart';
import '../../../../core/injector/set_up_locator.dart';
import '../../../../core/use_case/use_case.dart';
import '../entities/product.dart';
import '../repository/product.dart';

class GetProductsUseCase implements UseCase<List<ProductEntity>,NoParams>{
  final ProductRepository _productRepository;
  final getProductsUseCase = serviceLocator<GetProductsUseCase>();

  GetProductsUseCase(ProductRepository repository)
      : _productRepository = repository;


  @override
  Future<Either<Failure, List<ProductEntity>>> call(params) {
    return _productRepository.getProducts();
  }
}