public virtual class VirtualMeal implements MealCompositeProtocol {

    private String name;
    private Decimal price;
    
    public VirtualMeal(String name, Decimal price) {
        this.name = name;
        this.price = price;
    }

    public Decimal getPrice() {
        return this.price;
    }
}