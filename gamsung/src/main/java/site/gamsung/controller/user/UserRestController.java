package site.gamsung.controller.user;

import java.util.HashMap;
import java.util.Map;
import java.util.Random;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import site.gamsung.service.domain.User;
import site.gamsung.service.user.UserService;
import site.gamsung.util.user.TempKey;

@RestController
@RequestMapping("/user/*")
public class UserRestController {

	/// Field
	@Autowired
	@Qualifier("userServiceImpl")
	private UserService userService;

	public UserRestController() {
	}
 

//	@RequestMapping(value = "rest/sendEmailAuthNum/{id:.+}", method = RequestMethod.GET)
//	public Map<String, Object> sendEmailAuthNum(@PathVariable String id, HttpSession session){
//		System.out.println("rest로 넘어오는지");
//		
//		TempKey tmp = new TempKey();
//		String key=tmp.generateKey(6);
//		
//		Map<String, Object> map = new HashMap<String, Object>();
//		map.put("id", id);
//		map.put("key", key);
//		
//		try {
//			session.setAttribute(id, key);
//			
//			userService.sendEmailAuthNum(id, key);
//			
//			System.out.println("id"+id);
//			System.out.println("mailAuthKey&&"+key);
//			
//		} catch(Exception e) {
//			e.printStackTrace();
//		}
//			System.out.println("리턴될 키 값%%"+key);
//			return map;
//	}
	
	@RequestMapping(value = "rest/sendEmailAuthNum/{id:.+}", method = RequestMethod.GET)
	public String sendEmailAuthNum(@PathVariable String id, HttpSession session){
		System.out.println("rest로 넘어오는지");
		
		TempKey tmp = new TempKey();
		String key=tmp.generateKey(6);
		
		try {
			session.setAttribute(id, key);
			
			userService.sendEmailAuthNum(id, key);
			
			System.out.println("id"+id);
			System.out.println("mailAuthKey&&"+key);
			
		} catch(Exception e) {
			e.printStackTrace();
		}
			System.out.println("리턴될 키 값%%"+key);
			return key;
	}

	@RequestMapping(value = "rest/sendPhoneAuthNum/{phone}", method = RequestMethod.GET)
	public String sendPhoneAuthNum(@PathVariable String phone, HttpSession session) {

		System.out.println("넘어오는가");

		Random rand = new Random();

		String numStr = "";

		for (int i = 0; i < 4; i++) {

			String num = Integer.toString(rand.nextInt(10));

			numStr += num;
		}

		session.setAttribute(phone, numStr);

		userService.sendPhoneAuthNum(phone, numStr);

		return numStr;
	}

	@RequestMapping(value = "findIdPhoneAuthNum", method = RequestMethod.POST)
	public String findIdPhoneAuthNum(@RequestBody User user, Model model) {

		try {
			String userId = userService.findId(user.getName(), user.getPhone());
			if (userId == null) {
				return "redirect:./addUser";
			}
		} catch (Exception e) {
			e.printStackTrace();
		}

		model.addAttribute("phone", user.getPhone());
		return "forward:./sendPhoneAuthNum";
	}

	@RequestMapping(value = "rest/checkDuplication", method = RequestMethod.POST)
	public int checkDuplication(@RequestBody User user){
		System.out.println("1111");
		System.out.println(user);
		int isSuccess = 0;

		String check = userService.checkDuplication(user);

		System.out.println("check" + check);
		if (check != null) { // 중복
			isSuccess = 1;
		}
		System.out.println("str" + isSuccess);
		return isSuccess;
	}

	// 아이디찾기
	@RequestMapping(value = "rest/findId")
	public String findId(String name, String phone){

		String id = userService.findId(name, phone);

		return id;
	}

	// 비밀번호 찾기
	@RequestMapping(value = "rest/findPassword")
	public void findPassword(@RequestBody User user){
		
		User newUser = userService.findPassword(user);
		if (newUser != null) {
			userService.updateTempPassword(user);
		}
	}

	@RequestMapping(value = "addSecessionUser")
	public String addSecessionUser(@RequestBody User user){

		user = userService.checkIdPassword(user);
		if (user != null && userService.addSecessionUser(user)) {

			return "탈퇴";
		}
		return "탈퇴안됨";
	}

	@RequestMapping(value = "updateDormantGeneralUserConvert", method = RequestMethod.GET)
	public void updateDormantGeneralUserConvert(HttpSession session){
		userService.updateDormantGeneralUserConvert(session.getId());
	}

}
