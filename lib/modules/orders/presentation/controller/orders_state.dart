part of 'orders_bloc.dart';

class OrdersState extends Equatable {
  final String validatePromoCodesMsg;
  final RequestState validatePromoCodesState;
  final String validatePromoCodesError;

  final List<Address> addresses;
  final RequestState addressesState;
  final String addressesError;

  final String addOrderMsg;
  final RequestState addOrderState;
  final String addOrderError;

  final int addressId;
  final int addressSelected;

  const OrdersState({
    this.validatePromoCodesMsg = '',
    this.validatePromoCodesState = RequestState.nothing,
    this.validatePromoCodesError = '',
    this.addresses = const [],
    this.addressesState = RequestState.nothing,
    this.addressesError = '',
    this.addressId = 0,
    this.addressSelected = 0,
    this.addOrderMsg = '',
    this.addOrderState = RequestState.nothing,
    this.addOrderError = '',
  });

  OrdersState copyWith({
    String? validatePromoCodesMsg,
    RequestState? validatePromoCodesState,
    String? validatePromoCodesError,
    List<Address>? addresses,
    RequestState? addressesState,
    String? addressesError,
    int? addressId,
    int? addressSelected,
    String? addOrderMsg,
    RequestState? addOrderState,
    String? addOrderError,
  }) =>
      OrdersState(
        validatePromoCodesMsg:
            validatePromoCodesMsg ?? this.validatePromoCodesMsg,
        validatePromoCodesState:
            validatePromoCodesState ?? this.validatePromoCodesState,
        validatePromoCodesError:
            validatePromoCodesError ?? this.validatePromoCodesError,
        addresses: addresses ?? this.addresses,
        addressesState: addressesState ?? this.addressesState,
        addressesError: addressesError ?? this.addressesError,
        addressId: addressId ?? this.addressId,
        addressSelected: addressSelected ?? this.addressSelected,
        addOrderMsg: addOrderMsg ?? this.addOrderMsg,
        addOrderState: addOrderState ?? this.addOrderState,
        addOrderError: addOrderError ?? this.addOrderError,
      );

  @override
  List<Object> get props => [
        validatePromoCodesMsg,
        validatePromoCodesState,
        validatePromoCodesError,
        addresses,
        addressesState,
        addressesError,
        addOrderMsg,
        addOrderState,
        addOrderError,
        addressId,
        addressSelected,
      ];
}
