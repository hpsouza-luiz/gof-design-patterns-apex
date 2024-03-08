// Composite

Meals.Rice rice = new Meals.Rice('Rice', 10);
Meals.Bean bean = new Meals.Bean('Beans', 15);
Meals.Meat meat = new Meals.Meat('Meat', 40);

CompositedMeal mealBox = new CompositedMeal();
mealBox.addMeals(new List<VirtualMeal>{rice, bean, meat});

System.debug('===COMPOSITE===');
System.debug('Dish: ' + JSON.serializePretty(mealBox));
System.debug('Price: ' + mealBox.getPrice());

// Builder

MainDishBuilder dishBuilder = new MainDishBuilder();

CompositedMeal dish = dishBuilder
    .makeMeal()
    .makeBeverage()
    .makeDessert()
.getMeal();

dishBuilder.reset();

CompositedMeal otherDish = dishBuilder.makeBeverage().getMeal();

System.debug('===BUILDER===');
System.debug('Dish: ' + JSON.serializePretty(dish));
System.debug('Price: ' + dish.getPrice());
System.debug('Other Dish: ' + JSON.serializePretty(otherDish));
System.debug('Other Dish Price: ' + otherDish.getPrice());