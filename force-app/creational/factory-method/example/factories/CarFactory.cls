public class CarFactory extends VehicleFactory {
    
    public Vehicle getVehicle(String vehicleName) {
        return new FMCar(vehicleName);
    }
}