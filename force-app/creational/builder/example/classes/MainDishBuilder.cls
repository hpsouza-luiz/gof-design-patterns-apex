public class MainDishBuilder implements MealBuilderProtocol {
    
    private CompositedMeal meal = new CompositedMeal();

    public MainDishBuilder makeMeal() {
        Meals.Rice rice = new Meals.Rice('Rice', 10);
        Meals.Bean bean = new Meals.Bean('Beans', 15);
        Meals.Meat meat = new Meals.Meat('Meat', 40);
        this.meal.addMeals(new List<VirtualMeal>{rice, bean, meat});

        return this;
    }

    public MainDishBuilder makeBeverage() {
        Meals.Beverage beverage = new Meals.Beverage('Drink', 20);
        this.meal.addMeals(new List<VirtualMeal>{beverage});

        return this;
    }

    public MainDishBuilder makeDessert() {
        Meals.Dessert dessert = new Meals.Dessert('Petit Gateau', 15);
        this.meal.addMeals(new List<VirtualMeal>{dessert});

        return this;
    }

    public CompositedMeal getMeal() {
        return this.meal;
    }

    public MainDishBuilder reset() {
        this.meal = new CompositedMeal();

        return this;
    }
}