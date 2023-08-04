class DriverDashboard extends StatelessWidget {
  final Driver driver;
  DriverDashboard(this.driver);

  @override
  Widget build(BuildContext context) {
    // Fetch dealers who have booked this driver
    List<Dealer> bookedDealers = fetchBookedDealers(driver);

    return Scaffold(
      appBar: AppBar(title: Text('Driver Dashboard')),
      body: ListView.builder(
        itemCount: bookedDealers.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(bookedDealers[index].name),
            // Other dealer details
          );
        },
      ),
    );
  }
}
