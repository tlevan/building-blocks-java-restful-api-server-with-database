package restful_api_server_with_database;

import java.util.List;

import org.springframework.data.mongodb.repository.MongoRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.data.rest.core.annotation.RepositoryRestResource;

@RepositoryRestResource(collectionResourceRel = "api", path = "api")
public interface ValueRepository extends MongoRepository<Value, String> {

	List<Value> findByValue(@Param("value") String value);

}

