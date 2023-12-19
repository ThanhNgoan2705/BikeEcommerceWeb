package hcmuaf.edu.vn.BikeEcommerce.DAO.digitSig;


import hcmuaf.edu.vn.BikeEcommerce.DAO.ScirptSQL;
import hcmuaf.edu.vn.BikeEcommerce.model.digitSig.Cert;
import org.jdbi.v3.sqlobject.config.RegisterBeanMapper;
import org.jdbi.v3.sqlobject.customizer.Bind;
import org.jdbi.v3.sqlobject.customizer.BindBean;
import org.jdbi.v3.sqlobject.statement.SqlQuery;
import org.jdbi.v3.sqlobject.statement.SqlUpdate;

import java.util.List;

@RegisterBeanMapper(Cert.class)
public interface CertDAO {
    @SqlQuery(ScirptSQL.getAllCert)
    List<Cert> getAllCert();

    @SqlQuery(ScirptSQL.getCertBySeri)
    Cert getCertBySeri(@Bind("seri") String seri);

    @SqlUpdate(ScirptSQL.insertCert)
    void insertCert(@BindBean Cert cert);

}
