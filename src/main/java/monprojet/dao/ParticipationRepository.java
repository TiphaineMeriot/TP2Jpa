package monprojet.dao;

import monprojet.entity.Employe;
import monprojet.entity.Participation;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

public interface ParticipationRepository extends JpaRepository<Participation, Integer> {

    /*
    @Query("SELECT SUM(p.pourcentage) FROM Participation p join Participation_Contributeur c WHERE p.numParticipation = c.participation_num_participation)
    public Integer calculPopulation(Integer countryId);*/
    @Query("SELECT SUM(p.pourcentage) FROM Participation p JOIN p.affectation pr JOIN p.contributeur e WHERE e.matricule = :matriculeEmploye AND pr.fin IS NULL")
    //@Query("SELECT SUM(p.pourcentage) FROM Participation p join Participation.contributeur WHERE p.numParticipation = p.contributeur.participation_num_participation AND p.contributeur.matricule = :matricule AND Projet.fin <= NOW()")
    public float totalParticipation(Integer matriculeEmploye);


}
