class HomePageState {
  HomePageState({
     this.selectedPageIndex = 0,
  });

  final int selectedPageIndex;

  HomePageState copyWith({
    int? selectedPageIndex,
  }) {
    return HomePageState(
      selectedPageIndex: selectedPageIndex ?? this.selectedPageIndex,
    );
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is HomePageState &&
        other.selectedPageIndex == selectedPageIndex;
  }

  @override
  int get hashCode => selectedPageIndex.hashCode;

  @override
  String toString() => 'HomeScreenState(selectedPageIndex: $selectedPageIndex)';
}
