package xyz.itwill.controller;

import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.test.context.web.WebAppConfiguration;
import org.springframework.test.web.servlet.MockMvc;
import org.springframework.test.web.servlet.MvcResult;
import org.springframework.test.web.servlet.request.MockMvcRequestBuilders;
import org.springframework.test.web.servlet.setup.MockMvcBuilders;
import org.springframework.web.context.WebApplicationContext;

@RunWith(SpringJUnit4ClassRunner.class)
@WebAppConfiguration
@ContextConfiguration(locations = {"file:src/main/webapp/WEB-INF/spring/**/*.xml"})
public class OrderControllerTest {
	private static final Logger logger=LoggerFactory.getLogger(OrderControllerTest.class);
	@Autowired
	private WebApplicationContext context;
	private MockMvc mvc;
	
	
	@Before
	public void setup() {
		//MockMvcBuilders.webAppContextSetup(WebApplicationContext context)
		// => MockMvcBuilder 객체를 생성하여 반환하기 위한 메소드
		//MockMvcBuilder.build() : MockMvc 객체를 생성하여 반환하기 위한 메소드
		mvc=MockMvcBuilders.webAppContextSetup(context).build();
		logger.info("MockMvc 객체 생성");
	}
	
	@Test
	public void testStudentDisplay() throws Exception {

		//MockMvc.perform(Builder requestBuilder) : 가상으로 페이지를 요청하는 메소드
		// => Controller 클래스에서 해당 페이지의 요청 처리 메소드 호출
		// => 요청에 대한 처리결과가 저장된 ResultActions 객체 반환

		//MockMvcRequestBuilders.get(String url) : URL 주소를 전달받아 GET 방식으로 요청하는 메소드
        //Get 이나 Post 방식으로 요청가능함!!
		// => 페이지에 대한 URL 주소의 요청 관련 정보(리퀘스트 메세지)가 저장된 [Builder 객체] 반환 
        // => 리퀘스트 메세지의 필요한 메소드 다 집어넣을 수 있음 (밑의 그림 참고)

		//ResultActions.andReturn() : 요청 처리 메소드의 실행 결과를 MvcResult 객체로 반환하는 메소드
		MvcResult result=mvc.perform(MockMvcRequestBuilders.get("/order").param("", "")).andReturn();
		
		logger.info(result.getModelAndView().getViewName());
		logger.info(result.getModelAndView().getModel().toString());
	}
	
	
}
