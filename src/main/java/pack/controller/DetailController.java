package pack.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import pack.model.BoardDto;
import pack.model.CardInter;
import pack.model.BoardDaoImpl;
import pack.model.BoardDaoInter;

@Controller
public class DetailController {
   @Autowired
   private BoardDaoInter inter;
   @Autowired
   private CardInter cardInter;
   
   @RequestMapping("detail")
   public ModelAndView detail( 
         @RequestParam("num") String num,
         @RequestParam("page") String page,
         @RequestParam("id")String id){
      inter.updateReadcnt(num);
      ModelAndView model = new ModelAndView();
      model.setViewName("board/detail");
      model.addObject("dto", cardInter.getGuestInfo(id));
      model.addObject("data", inter.getDetail(num));
      model.addObject("page", page);
      
      return model;
   }
   
   @RequestMapping("admindetail")
   public ModelAndView detailAdmin( 
         @RequestParam("num") String num,
         @RequestParam("page") String page){
      inter.updateReadcnt(num);
      ModelAndView model = new ModelAndView();
      model.setViewName("board/admindetail");
      model.addObject("data", inter.getDetail(num));
      model.addObject("page", page);
      
      return model;
   }
}