@IsTest
private class SingletonTest {

    @IsTest
    private static void getInstanceTest() {
        Test.startTest();
        Singleton instance1 = Singleton.instance;
        Singleton instance2 = Singleton.instance;
        Test.stopTest();

        System.assertEquals(instance1, instance2, 'Both instances must be the same');
    }
}