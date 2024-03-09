public abstract class Creator {

    abstract Product factoryMethod();

    public void createAndShow() {
        Product product = this.factoryMethod();
        System.debug(JSON.serializePretty(product));
    }
}