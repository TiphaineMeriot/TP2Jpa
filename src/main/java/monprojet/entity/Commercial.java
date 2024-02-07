package monprojet.entity;

import jakarta.persistence.DiscriminatorValue;
import jakarta.persistence.Entity;

@Entity
public class Commercial extends Employe{

    private float pourcentage;
}
