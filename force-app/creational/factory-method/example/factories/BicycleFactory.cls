public class BicycleFactory extends VehicleFactory {
    
    public Vehicle getVehicle(String vehicleName) {
        return new Bicycle(vehicleName);
    }
}