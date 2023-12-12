package hcmuaf.edu.vn.BikeEcommerce.DAO.digitSig;

import hcmuaf.edu.vn.BikeEcommerce.DAO.ScirptSQL;
import hcmuaf.edu.vn.BikeEcommerce.model.digitSig.RevocationCert;
import org.jdbi.v3.sqlobject.config.RegisterBeanMapper;
import org.jdbi.v3.sqlobject.customizer.Bind;
import org.jdbi.v3.sqlobject.customizer.BindBean;
import org.jdbi.v3.sqlobject.statement.SqlQuery;
import org.jdbi.v3.sqlobject.statement.SqlUpdate;

import java.util.List;

@RegisterBeanMapper(RevocationCert.class)
public interface RevocationCertDAO {
    @SqlQuery(ScirptSQL.getAllRevocationCert)
    List<RevocationCert> getAll();

    @SqlQuery(ScirptSQL.getRevocationCertBySeri)
    RevocationCert getBySeri(@Bind("seri") String seri);

    @SqlUpdate(ScirptSQL.insertRevocationCert)
    void insert(@BindBean RevocationCert revocationCert);

    @SqlUpdate(ScirptSQL.updateRevocationCert)
    void update(@BindBean RevocationCert revocationCert);

    @SqlUpdate(ScirptSQL.deleteRevocationCert)
    void delete(@Bind("seri") String seri);
}
