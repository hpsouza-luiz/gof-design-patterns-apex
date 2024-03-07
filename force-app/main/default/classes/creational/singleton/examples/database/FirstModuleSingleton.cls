public class FirstModuleSingleton {
    
    public void run() {
        MyDatabaseSingleton myDatabaseInstance = MyDatabaseSingleton.instance;

        MyDatabaseSingleton.UserWrapper user = new MyDatabaseSingleton.UserWrapper();
        user.name = 'John';
        user.age = 50;

        myDatabaseInstance.addUser(user);

        System.debug('1 Module Log: ' + JSON.serializePretty(myDatabaseInstance.getUsers()));
    }
}