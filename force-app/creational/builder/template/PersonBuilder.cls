public class PersonBuilder implements PersonBuilderProtocol {

    private Person person = new Person();

    public PersonBuilder setName(String name) {
        this.person.name = name;
        
        return this;
    }

    public PersonBuilder setAge(Integer age) {
        this.person.age = age;
        
        return this;
    }

    public Person getPerson() {
        return this.person;
    }

    public class Person {
        public String name;
        public Integer age;
    }
}