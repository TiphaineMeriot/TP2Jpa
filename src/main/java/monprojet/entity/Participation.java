package monprojet.entity;

import jakarta.persistence.*;
import lombok.NonNull;

import java.util.List;

@Entity
public class Participation {

    @Id @GeneratedValue
    private Integer numParticipation;

    @NonNull
    private String role;

    @NonNull
    private float pourcentage;

    @ManyToMany
    private List<Projet> affectation;

    @ManyToMany
    private List<Employe> contributeur;


}
