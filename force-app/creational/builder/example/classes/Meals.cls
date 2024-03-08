public class Meals {
    
    public class Rice extends VirtualMeal {
        public Rice(String name, Decimal price) {
            super(name, price);
        }
    }

    public class Bean extends VirtualMeal {
        public Bean(String name, Decimal price) {
            super(name, price);
        }
    }

    public class Meat extends VirtualMeal {
        public Meat(String name, Decimal price) {
            super(name, price);
        }
    }

    public class Beverage extends VirtualMeal {
        public Beverage(String name, Decimal price) {
            super(name, price);
        }
    }

    public class Dessert extends VirtualMeal {
        public Dessert(String name, Decimal price) {
            super(name, price);
        }
    }
}