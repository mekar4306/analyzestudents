package com.hellokoding.auth.web;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.hellokoding.auth.model.Ogrenci;
import com.hellokoding.auth.service.OgrenciService;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
@RequestMapping("/ogrenci")
public class StudentController {

	@Autowired
	private OgrenciService ogrenciService;
	
	
	
	@RequestMapping(value="/list",method=RequestMethod.GET)
	public ModelAndView List(){
		
		ModelAndView model=new ModelAndView();
		List<Ogrenci> ogrenciListesi=ogrenciService.getAllStudents();
		
        Ogrenci Ogrenci=new Ogrenci();	
		model.addObject("ogrenciForm", Ogrenci);	   
		model.addObject("ogrenciListesi", ogrenciListesi);
		
		model.setViewName("ogrencilist");
		return model;
		
	}
	
	/*@RequestMapping(value="/siniflistele",method=RequestMethod.GET)
	 * 
	public ModelAndView siniflistelesayfasinigöster(){
		
		 ModelAndView model=new ModelAndView();
		    
		 Map<String, String> verilensiniflar = new HashMap<String, String>();
	        verilensiniflar.put("8/A", "8/A");
	        verilensiniflar.put("8/B", "8/B");
	        verilensiniflar.put("9/A", "9/A");
	        verilensiniflar.put("9/B", "9/B");
	        
	        
	        
	        Ogrenci Ogrenci=new Ogrenci();	
			model.addObject("ogrenciForm", Ogrenci);	
		    model.addObject("verilensiniflar", verilensiniflar);
		    model.setViewName("sinifsecmelist");
		return model;
		
	}*/
	
	
	@RequestMapping(value="/siniflistesonuc",method=RequestMethod.GET)
	public ModelAndView siniflistele(@ModelAttribute("ogrenciForm") Ogrenci ogrenci ){
		
		ModelAndView model=new ModelAndView();
		List<Ogrenci> ogrenciListesi=ogrenciService.getAllStudentsByClass(ogrenci.getSINIFI());
		
		model.addObject("ogrenciListesi", ogrenciListesi);
		model.setViewName("ogrencilist");
		return model;
		
	}
	
		

	@RequestMapping(value="/updateStudent/{id}",method=RequestMethod.GET)
	public ModelAndView updateStudent(@PathVariable("id")  Long id){
		
		Ogrenci Ogrenci=ogrenciService.getStudentById(id);
		
		ModelAndView model=new ModelAndView();
			
		model.addObject("ogrenciForm", Ogrenci);
		model.setViewName("ogrenciduzenleform");
		return model;
		
	}
	
	
	
	@RequestMapping(value="/addStudent",method=RequestMethod.GET)
	public ModelAndView addStudent(){
		
		Ogrenci Ogrenci=new Ogrenci();
		
		ModelAndView model=new ModelAndView();
		
		model.addObject("ogrenciForm", Ogrenci);
		model.setViewName("ogrenciform");
		return model;
		
	}
	

	
	@RequestMapping(value="/updateStudent",method=RequestMethod.POST)
	public ModelAndView update_Student(@ModelAttribute("ogrenciForm") Ogrenci ogrenci ){
			
	ogrenciService.Update(ogrenci);

	return new ModelAndView("redirect:/ogrenci/list");
		
	}
	
	
	
	@RequestMapping(value="/saveStudent",method=RequestMethod.POST)
	public ModelAndView updateStudent(@ModelAttribute("ogrenciForm") Ogrenci ogrenci ){
			
	ogrenciService.saveOrUpdate(ogrenci);

	return new ModelAndView("redirect:/ogrenci/list");
		
	}
	
	
	 @RequestMapping(value="/deleteStudent/{id}", method=RequestMethod.GET)
	 public ModelAndView delete(@PathVariable("id") long id) {
		ogrenciService.deleteStudent(id);
	  
		return new ModelAndView("redirect:/ogrenci/list");
		
	 }
	 
	 
	//odevlist formunda sınıf seçmeye yarayan kod!!!
     @ModelAttribute("verilensiniflar")
     public Map<String, String> verilensiniflar() {
        Map<String, String> verilensiniflar = new HashMap<String, String>();
        
        verilensiniflar.put("12/A", "12/A");
        verilensiniflar.put("12/B", "12/B");
        verilensiniflar.put("12/C", "12/C");
        verilensiniflar.put("11/A", "11/A");
        verilensiniflar.put("11/B", "11/B");
        verilensiniflar.put("10/A", "10/A");
        verilensiniflar.put("10/B", "10/B");
        verilensiniflar.put("9/A", "9/A");
        verilensiniflar.put("9/B", "9/B");
        
     
        
        return verilensiniflar;
     }
	 
	 
	 
	 
     
     @RequestMapping(value={"/logout.html"})
     public ModelAndView logout(){
    	 
    	 ModelAndView mav=new ModelAndView();
    	 mav.setViewName("logout");
    	 
    	 
    	 return mav;
     }
     
     
    @RequestMapping(value={"/login.html"})
 	public String login(){
 		

 		return "login";
 	}
 
     
   
	 

	    
}
