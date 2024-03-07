public class MyDatabaseSingleton {

    private MyDatabaseSingleton() {} // NOPMD

    public static MyDatabaseSingleton instance { 
        private set; 
        get {
            if (instance == null) {
                instance = new MyDatabaseSingleton();
            }
            return instance;
        }
    }

    private List<UserWrapper> users = new List<UserWrapper>();

    public void addUser(UserWrapper user) {
        this.users.add(user);
    }

    public void removeUser(Integer index) {
        this.users.remove(index);
    }

    public List<UserWrapper> getUsers() {
        return this.users;
    }

    public class UserWrapper {
        public String name;
        public Integer age;
    }
}