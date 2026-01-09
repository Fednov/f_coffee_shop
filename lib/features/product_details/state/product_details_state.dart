class ProductDetailsState {
  ProductDetailsState({
    this.selectedSizeIndex = 0,
  });
  final int selectedSizeIndex;

  ProductDetailsState copyWith({
    int? selectedSizeIndex,
  }) {
    return ProductDetailsState(
      selectedSizeIndex: selectedSizeIndex ?? this.selectedSizeIndex,
    );
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is ProductDetailsState &&
        other.selectedSizeIndex == selectedSizeIndex;
  }

  @override
  int get hashCode => selectedSizeIndex.hashCode;

  @override
  String toString() =>
      'ProductDetailsPageState(selectedSizeIndex: $selectedSizeIndex)';
}
