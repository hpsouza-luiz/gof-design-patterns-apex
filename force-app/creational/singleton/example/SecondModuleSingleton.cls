public class SecondModuleSingleton {
    
    public void run() {
        MyDatabaseSingleton myDatabaseInstance = MyDatabaseSingleton.instance;

        MyDatabaseSingleton.UserWrapper user = new MyDatabaseSingleton.UserWrapper();
        user.name = 'Lennon';
        user.age = 47;

        myDatabaseInstance.addUser(user);

        System.debug('2 Module Log: ' + JSON.serializePretty(myDatabaseInstance.getUsers()));
    }
}