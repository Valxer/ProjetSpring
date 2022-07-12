import org.springframework.context.support.ClassPathXmlApplicationContext;

import service.AdminService;

public class Test {

	public static void main(String[] args) {
		ClassPathXmlApplicationContext ctx = new ClassPathXmlApplicationContext("./applicationContext.xml");
		AdminService serv = ctx.getBean(AdminService.class);
		ctx.close();
	}

}
