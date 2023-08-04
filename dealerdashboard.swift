class DealerDashboard extends StatelessWidget {
  final Dealer dealer;
  DealerDashboard(this.dealer);

  @override
  Widget build(BuildContext context) {
    // Fetch drivers based on dealer's city and state
    List<Driver> drivers = fetchDriversByLocation(dealer.city, dealer.state);

    return Scaffold(
      appBar: AppBar(title: Text('Dealer Dashboard')),
      body: ListView.builder(
        itemCount: drivers.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(drivers[index].name),
            // Other driver details
          );
        },
      ),
    );
  }
}
