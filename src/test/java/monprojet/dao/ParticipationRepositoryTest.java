package monprojet.dao;

import lombok.extern.log4j.Log4j2;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.autoconfigure.orm.jpa.DataJpaTest;
import org.springframework.test.context.jdbc.Sql;

import static org.junit.jupiter.api.Assertions.assertNotNull;

@DataJpaTest
public class ParticipationRepositoryTest {

    @Autowired
    private ParticipationRepository dao;

    @Test
    void testCalculPourcentage() {
        Integer employeID = 1;
        float pourcentage = dao.totalParticipation(employeID);
        assertNotNull(pourcentage);
        System.out.println("Pourcentage avec l'id " + employeID + ": " + pourcentage);
    }
}
