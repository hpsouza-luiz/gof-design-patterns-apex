public class Bicycle implements Vehicle {
    
    private String name;

    public Bicycle(String name) {
        this.name = name;
    }
    
    public void pickUp(String customerName) {
        System.debug(this.name + ' is picking up ' + customerName);
    }

    public void stop() {
        System.debug(this.name + ' stopped');
    }
}