package test;


import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Set;

import net.sf.json.JSONArray;
import net.sf.json.JSONObject;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.EWaiter.model.food.FoodModel;
import com.EWaiter.model.food.FoodTypeModel;
import com.EWaiter.model.mer.RoomModel;
import com.EWaiter.model.order.OrderItemModel;
import com.EWaiter.model.order.OrderModel;
import com.EWaiter.model.place.AreaModel;
import com.EWaiter.service.FoodTypeService;
import com.EWaiter.service.mer.RoomService;
import com.EWaiter.service.order.OrderService;
import com.EWaiter.service.place.NationService;
import com.EWaiter.service.user.BUserService;
import com.EWaiter.util.ErrorCode;
import com.EWaiter.util.JsonResponse;


@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations={"classpath:spring-base.xml"})
public class TestDAO {

	@Autowired(required = true)
	@Qualifier("foodTypeService")
	private FoodTypeService foodTypeService;
	
	
	@Autowired(required = true)
	@Qualifier("orderService")
	private OrderService orderService;
	
	@Autowired(required = true)
	@Qualifier("nationService")
	private NationService nationService;
	
	@Autowired(required = true)
	@Qualifier("roomService")
	private RoomService roomService;
	
	@Autowired(required = true)
	@Qualifier("bUserService")
	private BUserService bUserService;
	
//	@Test
//	public void testBuser()
//	{
//		JSONObject jsonObject = new JSONObject();
//		ErrorCode errorCode = bUserService.authBUser("13922151165", "123458", jsonObject);
//		System.out.println(errorCode.getDetail());
//	}
	@Test
	public void  testOrder()
	{
		Date date = new Date();
		
		JsonResponse orderModels = orderService.syncOrder(2, new Date());
		System.out.println("orderModels:" + orderModels.generate());
//		System.out.println(date.toString());
		
		
//		for (OrderModel orderModel : orderModels) 
//		{
//			System.out.println(orderModel.getPhone());
//			Set<OrderItemModel> orderItemModels = orderModel.getOrderItemModels();
//			for (OrderItemModel orderItemModel :orderItemModels ) 
//			{
//				System.out.println(orderItemModel.getFoodModel().getName());
//			}
//		}
//		
		
	}
	
	
	
//	@Test
//	public void testFood()
//	{
//		List<FoodTypeModel> foodTypeModels = foodTypeService.getMenuByMerID(2, 20);
//		for (FoodTypeModel foodTypeModel:foodTypeModels) 
//		{
//			Set< FoodModel> foodModels =foodTypeModel.getFoodModels();
//			System.out.println(foodModels.size());
//		}
//		System.out.println("size:" + foodTypeModels.size());
//		JSONArray jsonArray = JSONArray.fromObject(foodTypeModels);
//		System.out.println(foodTypeService.getMenuByMerID(2, 20));
//	}
	
	
//	@Test
//	public void testRoom()
//	{
//		List<RoomModel> roomModels = roomService.getrRoomModelsByMerID(1);
//		if (roomModels != null)
//		{
//			for (RoomModel room :roomModels )
//			{
//				System.out.println("room:" + room.getName());
//			}
//		}
//		
//		
//	}
	
	
//	@Autowired(required = true)
//	@Qualifier("orderDesService")
//	private OrderDesService orderDesService;
	
//	@Test
//	public void tesOrder()
//	{
////		System.out.println(foodTypeService.getFoodTypeByID(4));
//		orderDesService.addOrderDes();
//
//	
//	}
//	@Test
//	public void orderTest()
//	{
//		OrderModel orderModel = new OrderModel();
//		orderModel.setMethod(1);
//		orderModel.setMerID(1);
//		orderModel.setUserID(1);
//		orderModel.setDeskID(1);
//		orderModel.setStatus(1);
//		orderModel.setTime(new Date());
//		orderModel.setPhone("13922151165");
//		
//		
//		OrderItemModel orderItemModel = new OrderItemModel();
//		orderItemModel.setFoodID(1);
//		orderItemModel.setNumber(1);
//		orderItemModel.setType("大");
//		orderItemModel.setDes("老客户");
////		orderItemModel.setOrderModel(orderModel);
////		orderModelTest.addOrderItem(orderDesModelTest);
//		
//		OrderItemModel orderItemModel2 = new OrderItemModel();
//		orderItemModel2.setFoodID(1);
//		orderItemModel2.setNumber(1);
//		orderItemModel2.setType("大");
//		orderItemModel2.setDes("老客户");
////		orderItemModel2.setOrderModel(orderModel);
////		orderModelTest.addOrderItem(orderDesModelTest2);
//		
//		ArrayList<OrderItemModel> orderDesModelTests = new ArrayList<OrderItemModel>();
//		orderDesModelTests.add(orderItemModel);
//		orderDesModelTests.add(orderItemModel2);
////		
//		orderModel.setOrderItemModels(orderDesModelTests);
//		orderService.addOrder(orderModel);
//		
//	}
	
//	@Test
//	public void orderTest()
//	{
//		OrderModelTest orderModelTest = new OrderModelTest();
//		orderModelTest.setMethod(1);
//		orderModelTest.setMerID(1);
//		orderModelTest.setUserID(1);
//		orderModelTest.setDeskID(1);
//		orderModelTest.setStatus(1);
//		orderModelTest.setTime("2014.12.1");
//		orderModelTest.setPhone("13922151165");
//		
//		
//		OrderDesModelTest orderDesModelTest = new OrderDesModelTest();
//		orderDesModelTest.setFoodID(1);
//		orderDesModelTest.setNumber(1);
//		orderDesModelTest.setType("大");
//		orderDesModelTest.setDes("老客户");
//		orderDesModelTest.setOrderModelTest(orderModelTest);
//
//		
//		OrderDesModelTest orderDesModelTest2 = new OrderDesModelTest();
//		orderDesModelTest2.setFoodID(1);
//		orderDesModelTest2.setNumber(5);
//		orderDesModelTest2.setType("大");
//		orderDesModelTest2.setDes("老客户");
//		orderDesModelTest2.setOrderModelTest(orderModelTest);
//
//		
//		ArrayList<OrderDesModelTest> orderDesModelTests = new ArrayList<OrderDesModelTest>();
//		orderDesModelTests.add(orderDesModelTest);
//		orderDesModelTests.add(orderDesModelTest2);
////		
//		orderModelTest.setOrderDesModelTests(orderDesModelTests);
//		orderServiceTest.addOrder(orderModelTest);
		
//	}

//	@Test
//	public void nationTest()
//	{
//		NationModel nationModel = new NationModel();
//		nationModel.setCode(60);
//		nationModel.setName("美国");
//		
//		ProvinceModel provinceModel = new ProvinceModel();
//		provinceModel.setName("加州");
//		List<CityModel> cityModels = new ArrayList<CityModel>();
//		CityModel cityModel = new CityModel();
//		cityModel.setName("xx");
//		
//		List<AreaModel> areaModels = new ArrayList<AreaModel>();
//		AreaModel areaModel = new AreaModel();
//		areaModel.setName("area");
//		areaModels.add(areaModel);
//		cityModel.setAreaModels(areaModels);
//		
//		List<BusinessCircleModel> businessCircleModels = new ArrayList<BusinessCircleModel>();
//		BusinessCircleModel businessCircleModel = new BusinessCircleModel();
//		businessCircleModel.setName("business");
//		businessCircleModel.setDes("des");
//		businessCircleModel.setLon(100);
//		businessCircleModel.setLat(100);
//		businessCircleModels.add(businessCircleModel);
//		areaModel.setBusinessCircleModels(businessCircleModels);
//		
//		CityModel cityModel2 = new CityModel();
//		cityModel2.setName("oo");
//		cityModels.add(cityModel);
//		cityModels.add(cityModel2);
//		provinceModel.setCityModels(cityModels);
//		
//		
//		
//		ProvinceModel provinceModel2 = new ProvinceModel();
//		provinceModel2.setName("伊利诺伊州");
//		List<ProvinceModel> provinceModels = new ArrayList<ProvinceModel>();
//		provinceModels.add(provinceModel);
//		provinceModels.add(provinceModel2);
//		nationModel.setProvinceModels(provinceModels);
//		
//		nationService.addNation(nationModel);
//		
//		
//	}
	
//	@Test
//	public void orderTest()
//	{
//		List<OrderModel > orderModels = orderService.getOrderByMerID(1);
//		for (OrderModel orderModel : orderModels)
//		{
//			System.out.println("order:"+ orderModel.getNote());
//		}
//	}
	
}
