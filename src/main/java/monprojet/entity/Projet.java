package monprojet.entity;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.validation.constraints.Email;
import lombok.NonNull;

import java.time.LocalDate;

@Entity
public class Projet {

    @Id
    private Integer code;

    @NonNull
    private String nom;

    @NonNull
    private LocalDate debut;

    private LocalDate fin;
}
