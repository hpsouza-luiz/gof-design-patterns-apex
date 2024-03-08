public class Singleton {

    private Singleton() {} // NOPMD

    public static Singleton instance {
        private set;

        get {
            if (instance == null) {
                instance = new Singleton();
            }
    
            return instance;
        }
    }
}