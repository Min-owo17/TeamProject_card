package pack.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import pack.model.CardDto;
import pack.model.GuestInter;
import pack.model.RegisterDto;

@Controller
public class CardGuestController {
   @Autowired
   private GuestInter guestInter;
   
   @RequestMapping(value = "main", method = RequestMethod.GET)
   public String main() {
      return "guest/main";
      
   }

   //회원가입 창 띄우는 함수
   @RequestMapping(value = "insertcardguest", method = RequestMethod.GET)
   public ModelAndView insert() {
	   ModelAndView model = new ModelAndView();
	   List<CardDto> list = guestInter.guestList();
	   model.setViewName("guest/signup");
	   model.addObject("dto", list);
      return model;
      
   }
   //회원가입 완료 함수
   @RequestMapping(value = "insertcardguest", method = RequestMethod.POST)
   public String submit(CardDto dto) {
      boolean b = guestInter.insData(dto);
      if(b) {
         return "guest/main";
         
      }else {
         return "guest/signup";
      }
   }
   @RequestMapping(value = "adminmain", method = RequestMethod.GET)
   public String adminmain() {
      return "board/adminmain";
      
   }

   @RequestMapping(value="event", method = RequestMethod.GET)
   public String event() {
      return "guest/event";
   }
}
