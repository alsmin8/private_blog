package gm.practice.mapper;

import java.sql.Connection;

import javax.inject.Inject;
import javax.sql.DataSource;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations=  {"file:src/main/webapp/WEB-INF/spring/**/root-context.xml"})
@Log4j
public class MapperTest {

	@Setter(onMethod_=@Autowired)
	private UserMapper mapper;
	
	@Test
	public void testTime(){
		
		//log.info("현재 시간:"+mapper.getTime());
		
		log.info(mapper.listUser());
	}
	
	
}
