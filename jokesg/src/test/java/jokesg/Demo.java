package jokesg;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.jokesg.gg.common.config.Global;
import com.jokesg.gg.common.utils.DateUtils;
import com.jokesg.gg.common.utils.IdGen;
import com.jokesg.gg.common.utils.redis.RedisCache;
import com.jokesg.gg.mvc.cms.dao.MenusDao;
import com.jokesg.gg.mvc.cms.dao.RolesDao;
import com.jokesg.gg.mvc.cms.dao.UsersDao;
import com.jokesg.gg.mvc.cms.service.UsersService;
import com.jokesg.gg.mvc.cms.vo.RoleMenu;
import com.jokesg.gg.mvc.ims.dao.CircleFriendsDao;
import com.jokesg.gg.mvc.ims.dao.FansDao;
import com.jokesg.gg.mvc.ims.dao.VisitorDao;
import com.jokesg.gg.mvc.ims.entity.CircleFriends;
import com.jokesg.gg.mvc.ims.entity.Fans;
import com.jokesg.gg.mvc.ims.entity.Visitor;
import com.jokesg.gg.mvc.rms.dao.CommentDao;
import com.jokesg.gg.mvc.rms.dao.FavoritesDao;
import com.jokesg.gg.mvc.rms.dao.VideoDao;
import com.jokesg.gg.mvc.rms.entity.Comment;
import com.jokesg.gg.mvc.rms.entity.Favorites;
import com.jokesg.gg.mvc.rms.entity.Jokesg;
import com.jokesg.gg.mvc.rms.vo.JokesgMenu;
import com.jokesg.gg.mvc.sys.dao.CodeDao;
import com.jokesg.gg.mvc.sys.dao.MenuDao;
import com.jokesg.gg.mvc.sys.dao.RoleDao;
import com.jokesg.gg.mvc.sys.dao.UserDao;
import com.jokesg.gg.mvc.sys.entity.Code;
import com.jokesg.gg.mvc.sys.entity.Menu;
import com.jokesg.gg.mvc.sys.entity.Role;
import com.jokesg.gg.mvc.sys.entity.User;
import com.jokesg.gg.mvc.sys.service.SystemService;
import com.jokesg.gg.mvc.sys.service.UserService;
import com.jokesg.gg.mvc.sys.utils.SystemUtils;
import com.jokesg.gg.mvc.wallet.dao.ProductsDao;
import com.jokesg.gg.mvc.wallet.entity.Products;
import com.jokesg.gg.web.entity.Paging;

@RunWith(SpringJUnit4ClassRunner.class)    
@ContextConfiguration(locations = {"classpath*:spring-mybatis.xml"})   
public class Demo {

	@Resource
	private UserService userService;
	@Resource
	private RoleDao roleDao;
	@Resource
	private MenuDao menuDao;
	@Resource
	private UserDao userDao;
	@Resource
	private CodeDao codeDao;
	@Resource
	private SystemService systemService;
	@Resource
	private VideoDao jokesgDao;
	@Resource
	private RolesDao rolesDao;
	@Resource
	private MenusDao menusDao;
	@Resource
	private UsersDao usersDao;
	@Resource
	private UsersService usersService;
	@Resource
	private FavoritesDao favoritesDao;
	@Resource
	private FansDao fansDao;
	@Resource
	private VideoDao videoDao;
	@Resource
	private VisitorDao visitorDao;
	@Resource
	private ProductsDao productsDao;
	@Resource
	private CircleFriendsDao circleFriendsDao;
	@Resource
	private CommentDao commentDao;
	
	@Test
	public void findAllListProducts(){
		List<Products> products = productsDao.findAllList();
		System.out.println("***************" + products);
	}
	
	@Test
	public void findComment(){
		Comment comment = new Comment();
		comment.setJokesgId("9df09aae24c143a4a7ffb1a1a2633bd3");
		List<Comment> comments = commentDao.findAllList(comment);
		System.out.println("***************" + comments);
	}
	
	@Test
	public void findCircleFriends(){
		List<CircleFriends> circleFriends = circleFriendsDao.findAllFriends("1");
		System.out.println("***************" + circleFriends);
	}

	@Test
	public void getProducts(){
		List<Products> products = productsDao.findList("1");
		System.out.println("***************" + products);
	}
	
	@Test
	public void getVisitor(){
		List<Visitor> visitors = visitorDao.findList("1");
		System.out.println("***************" + visitors);
	}
	
	@Test
	public void countVideoByMenuId(){
		JokesgMenu jokesgMenu = new JokesgMenu();
		jokesgMenu.setMenuId("805");
		int countVideoByMenuId = videoDao.countVideoByMenuId(jokesgMenu);
		System.out.println("***************" + countVideoByMenuId);
	}
	
	@Test
	public void isConcern2(){
		Fans fans = new Fans();
		fans.setFansId("1212");
		fans.setUserId("1");
		Fans concern2 = fansDao.isConcern2(fans);
		System.out.println("******************" + concern2);
	}
	
	@Test
	public void getFans1(){
		Paging paging = new Paging();
		User user = new User();
		user.setId("1");
		user.setPaging(paging);
		List<User> fans1 = usersDao.getFans(user);
		System.out.println("*************" + fans1);
	}
	
	@Test
	public void getFansCount(){
		Fans fans = new Fans();
		fans.setUserId("1");
//		fans.setFansId("2");
		int count = fansDao.getFansCount(fans);
		System.out.println(count + "******************");
	}
	
	@Test
	public void fansDelete(){
		Fans fans = new Fans();
		fans.setUserId("1");
		fans.setFansId("2");
		fans.preUpdate();
		fans.setDelFlag("0");
		fansDao.delete(fans);
	}
	
	@Test
	public void fansInsert(){
		Fans fans = new Fans();
		fans.setUserId("1");
		fans.setFansId("2");
		fans.preInsert();
		int fans2 = fansDao.insert(fans);
		System.out.println(fans2 + "***************");
	}
	
	@Test
	public void fansGet(){
		Fans fans = new Fans();
		fans.setUserId("1");
		fans.setFansId("2");
		Fans fans2 = fansDao.get(fans);
		System.out.println(fans2 + "***************");
	}
	
	@Test
	public void getVideoByMenuId(){
		JokesgMenu jokesgMenu = new JokesgMenu();
		Paging paging = new Paging();
		paging.setPageSize(1);
		jokesgMenu.setPaging(paging);
		jokesgMenu.setMenuId("805");
		List<Jokesg> jokesgs = jokesgDao.getVideoByMenuId(jokesgMenu);
		System.out.println(jokesgs + "****************");
	}
	
	
	
	@Test
	public void findListFavorites(){
		Favorites favorite = new Favorites();
		favorite.setUserId("1");
		List<Favorites> findList = favoritesDao.findList(favorite);
		System.out.println(findList + "****************");
	}
	
	@Test
	public void getType(){
		Favorites favorites = new Favorites();
		favorites.setUserId("1");
		favorites.setJokesgId("9df09aae24c143a4a7ffb1a1a2633bd3");
		List<String> favorite = favoritesDao.getType(favorites);
		System.out.println(favorite + "****************************");
	}

	@Test
	public void favorites(){
		Favorites favorites = new Favorites();
		favorites.setUserId("1");
		favorites.setJokesgId("2");
		Favorites favorite = favoritesDao.get(favorites);
		System.out.println(favorite + "****************************");
	}
	
	@Test
	public void saveUser(){
		User user  = new User();
		user.setDelFlag("0");
		user.setId("100");
		user.setUsername("cs");
		user.setPassword("888");
		user.setNickname("0");
		user.setEmail("qq@");
		user.setPhone("110");
		user.setInsertDate("2014-01-01");
		user.preUpdate();
		usersDao.update(user);
	}
	
	@Test
	public void count(){
		User user  = new User();
		user.setUsername("a");
		int count = usersDao.count(user);
		System.out.println(count + "*****************************************");
	}
	
	
	@Test
	public void findUsers(){
		User user = new User();
		Paging paging = new Paging();
		paging.setPageSize(3);
		paging.setPageNo(2);
		user.setDelFlag("1");
		user.setPaging(paging);
		List<User> users = usersDao.findList(user);
		for (User user2 : users) {
			System.out.println(user2);
		}
	}
	
	@Test
	public void insertMenu(){
		Menu menu = new Menu();
		menu.preInsert();
		menusDao.insert(menu);
	}
	
	@Test
	public void addRoleMenu(){
		List<RoleMenu> rms = new ArrayList<RoleMenu>();
		RoleMenu rm = null;
		for (int j = 0; j < 5; j++) {
			rm = new RoleMenu();
			rm.setRoleId("1000");
			rm.setMenuId(String.valueOf(j));
			rms.add(rm);
		}
		System.out.println(rms.size() + "**********");
		
		for (RoleMenu roleMenu : rms) {
			System.out.println(roleMenu.getMenuId());
		}
		
//		rolesDao.addRoleMenu(rms);
	}
	
	@Test
	public void insert1(){
		Jokesg jokesg = new Jokesg();
		jokesg.preInsert();
		jokesg.setId(IdGen.uuid());
		jokesg.setUserId("2");
		jokesg.setName("伪装者");
		jokesgDao.insert(jokesg);
	}
	
	@Test
	public void findList(){
		String userId = "1";
		List<Jokesg> Jokesgs = jokesgDao.findList(userId);
		for (Jokesg jokesg : Jokesgs) {
			System.out.println(jokesg);
		}
	}
	
	@Test
	public void delete(){
		jokesgDao.delete("67");
	}
	
	@Test
	public void updatePasswordById(){
		User user =  new User();
		user.setId("4");
		user.setPassword("0001");
		userService.modifyPwd(user);
	}
	
	@Test
	public void test() {
		User user = userService.get("1");
		System.out.println(user);
	}

	@Test
	public void insert(){
		User user = new User();
		user.preInsert();
		System.out.println(user.getId() + "*****************************");
		user.setEmail("12313@qq.com");
		user.setPhone("110");
		user.setNickname("测试");
		user.setPassword("123");
		userDao.insert(user);
	}
	
	@Test
	public void getRoles() throws Exception {
		List<Role> roles = roleDao.getRoles("314975605@qq.com") ;
		for (Role role : roles) {
			System.out.println(role);
		}
	}
	
	@Test
	public void getSubMenu() throws Exception {
		List<Menu> lv1Menus = null;
		User user = new User();
		Menu rootMenu = new Menu();
		rootMenu.setId("1");
		rootMenu.setUserId(user.getId());
		
		lv1Menus = menuDao.getSubMenus(rootMenu);
		for (Menu menu : lv1Menus) {
			menu.setUserId(user.getId());
			List<Menu> lv2Menus = menuDao.getSubMenus(menu);
			for (Menu menu2 : lv2Menus) {
				System.out.println(menu2 + "2级菜单");
			}
			System.out.println(menu + "1级菜单");
		}
	}
	
	@Test
	public void testFun(){
		User user = new User();
		user.preInsert();
		user.setPassword("123456");
		String pwd = SystemUtils.securePassword(user.getId(),user.getPassword());
		user.setPassword(pwd);
		user.setEmail("000");
		user.setPhone("120");
		user.setNickname("测试");
		userDao.insert(user);
		System.out.println(pwd);
	}
	
	/**
	 * 测试注册
	 */
	@Test
	public void register(){
		User user = new User();
		user.preInsert();
		user.setPassword("123456");
		String pwd = SystemUtils.securePassword(user.getId(),user.getPassword());
		user.setPassword(pwd);
		user.setEmail("000");
		user.setUsername(user.getEmail());
		user.setPhone("120");
		user.setNickname("测试");
		userService.register(user);
		
		System.out.println("**************************************************");
	}
	
	@Test
	public void getUserRole(){
		String userRole = userDao.getUserRole("1b87c1b3d5044a24b51d386bdd7abd99");
		System.out.println(userRole+"****************************************");
		
	}
	
	
	@Test
	public void getCode(){
		Code code = codeDao.get("11");
		System.out.println(code.toString() + "************************");
	}
	
	@Test
	public void testRedis(){
		RedisCache.set("codeId", "dgsadfgsadgf555", 60*60*24);
		RedisCache.get("codeId");
	}
	
	@Test
	public void getLoginName(){
		User user = userDao.getLoginName("test@jokesg.com");
		System.out.println(user + "************");
	}
	
	@Test
	public void lockAccount(){
		User user = new User();
		user.setId("3");
		user.preUpdate();
		user.setUsername("admin");
		user.setIsLogin(Global.NO);
		userService.lockAccount(user);
	}
	
	@Test
	public void updateUserLoginInfo(){
		User user = new  User();
		user.setId("3");
		user.setLoginIp("192.168.1.1");
		user.setLoginName("小章哥的电脑");
		user.setLoginTime(DateUtils.getTime());
		userDao.updateLoginInfo(user);
	}
}
