public class CompositedMeal implements MealCompositeProtocol {

    private List<VirtualMeal> children = new List<VirtualMeal>();

    public void addMeals(List<VirtualMeal> meals) {
        this.children.addAll(meals);
    }
    
    public Decimal getPrice() {
        Decimal price = 0;
        for (VirtualMeal meal : this.children) {
            price += meal.getPrice();
        }

        return price;
    }
}