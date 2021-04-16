import cn.it.dao.AdminMapper;
import cn.it.dao.DocumentMapper;
import cn.it.pojo.Admin;
import cn.it.pojo.Document;
import org.junit.Before;
import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

public class TestDemo {
    private ApplicationContext ac;
    @Before
    public void up(){
        ac = new ClassPathXmlApplicationContext("applicationContext-dao.xml");
    }
    @Test
    public void run1() {
        AdminMapper adminMapper = (AdminMapper) ac.getBean("adminMapper");
        Admin admin = adminMapper.selectByPrimaryKey("admin");
        System.out.println(admin);
    }

    @Test
    public void run() throws Exception{
        DocumentMapper mapper = (DocumentMapper) ac.getBean("documentMapper");
        Document document = mapper.selectByPrimaryKey(1);
        System.out.println(document);
    }
}
