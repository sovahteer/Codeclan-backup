package models;

import javax.persistence.Entity;
import javax.persistence.Table;

@Entity
@Table(name = "deckhands")
public class DeckHand extends Pirate {

    public DeckHand(String firstName,
                    String lastName,
                    int age,
                    Weapon weapon,
                    Ship ship) {
        super(firstName, lastName, age, weapon, ship);
    }



    public DeckHand() {
    }

}

// ಠ_ಠ You lookin' at my code, holmes?
