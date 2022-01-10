  package site.gamsung.controller.community;
  
  import java.io.File; 
  import java.io.IOException; 
  import java.nio.file.Files;
  import java.nio.file.Path; 
  import java.nio.file.Paths; 
  import java.nio.file.StandardCopyOption;
import java.util.ArrayList;
import java.util.Enumeration;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import javax.servlet.ServletRequest;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
  
  import org.springframework.beans.factory.annotation.Autowired; 
  import org.springframework.beans.factory.annotation.Qualifier; 
  import org.springframework.beans.factory.annotation.Value; 
  import org.springframework.stereotype.Controller; 
  import org.springframework.ui.Model; 
  import org.springframework.web.bind.annotation.GetMapping; 
  import org.springframework.web.bind.annotation.ModelAttribute; 
  import org.springframework.web.bind.annotation.RequestMapping; 
  import org.springframework.web.bind.annotation.RequestMethod; 
  import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.ModelAndView;

import site.gamsung.service.common.Search; 
  import site.gamsung.service.community.CommunityService;
import site.gamsung.service.domain.AuctionProduct;
import site.gamsung.service.domain.Comment;
import site.gamsung.service.domain.Post; 
  import site.gamsung.service.domain.User;

  
  @RequestMapping("/community/*")
  @RestController 
  public class CommunityRestController {
  
  @Value("#{commonProperties['communityPageSize']}") int communityPageSize;
    
  @Autowired
  @Qualifier("communityServiceImpl") private CommunityService communityService;
  
  public CommunityRestController() { 
	  System.out.println(this.getClass()); 
  }

  
  
// 댓글 list 
  
  @RequestMapping (value = "rest/listComment") 
  
  public List<Comment> listComment (@ModelAttribute("post") Post post, Model model, HttpSession session) throws Exception{
  
	System.out.println("listComment"); // listPost 시작 

	User user = (User)session.getAttribute("user"); //Session에서 user받아서 user setting하기. 
	
	System.out.println(user);
	
	int postNo = post.getPostNo();
	
	System.out.println(postNo);	
	
//	List<Comment> Comment = communityService.listComment(postNo);
//	
//	// Model 과 View 연결 
//	
//	model.addAttribute("list", Comment );
  
	return communityService.listComment(postNo);

  }
  
  
  
//댓글 add
  
  @RequestMapping(value = "rest/addComment") 
 @ResponseBody
 public Post addComment (@RequestParam String postno, String userid,  String val, User user, Comment comment, Post post) throws Exception{
	 
	 System.out.println("addComment");
	 
	 int postnoo = Integer.parseInt(postno);
	 
	 user.setId(userid);
	 post.setPostNo(postnoo);
 
	 comment.setPostNo(post);
	 comment.setCommentWriter(user);
	 comment.setCommentContent(val);
	 
	 System.out.println("postno ==>" + postno +" userid => " + userid + "val ==> " + val );
	 
	 
	 	   communityService.addComment(comment);
	 
	post = communityService.updatetotalComment2(postnoo);
		 
	return post; 	 
 }
  
//댓글 delete
  
 @RequestMapping(value = "rest/deleteComment") 
 @ResponseBody
 public Post deleteComment (@RequestParam String commentno, Post post) throws Exception{
	 
	 System.out.println("deleteComment");
	 
	 int commentnoo = Integer.parseInt(commentno);
	 
	 System.out.println("DeleteCommentNo:::::::" + commentnoo);
	 	 	 
	 int a= communityService.deleteComment(commentnoo);
 
	 System.out.println("aaaaa:"+a);
//	 System.out.println("Post::"+communityService.updatetotalComment(commentnoo));
	 		
	post = communityService.updatetotalComment(commentnoo);
	 
	return post;
 }  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  }//CommunityRestController END