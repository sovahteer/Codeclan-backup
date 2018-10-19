public class Runner {
    public static void main(String[] args){
//         create a new bear
        Bear newBear = new Bear("Yogi", 31, 120.5);
//        change its name
        newBear.setName( "Paddington" ) ;
        newBear.setAge( 32 );
        newBear.setWeight( 120.5 );
//         print its new name
        System.out.println( newBear.getName() );
        System.out.println( newBear.getAge() );
        System.out.println( newBear.getWeight() );
    }
}
