public class Car implements PrototypeProtocol {

    public String model;
    public String color;

    public Car copy() {
        Car car = new Car();
        car.model = this.model;
        car.color = this.color;

        return car;
    }
}