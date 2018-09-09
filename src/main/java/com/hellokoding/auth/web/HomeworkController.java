package com.hellokoding.auth.web;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.support.DataAccessUtils;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.hellokoding.auth.model.Odev;
import com.hellokoding.auth.model.Ogrenci;
import com.hellokoding.auth.model.OgrenciBasariDetay;
import com.hellokoding.auth.model.OgrenciNot;
import com.hellokoding.auth.service.OdevService;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
@RequestMapping("/odev")
public class HomeworkController {
	
	
	@Autowired
	private OdevService odevService;
		
	 
	 @RequestMapping(value="/addHomework",method=RequestMethod.GET)
	 public ModelAndView addHomework(){
			
			Odev Odev=new Odev();
			
			ModelAndView model=new ModelAndView();
			
			model.addObject("odevForm", Odev);
			model.setViewName("odevform");
						
			return model;
			
		}
	
	 @RequestMapping(value="/saveHomework",method=RequestMethod.POST)
		public ModelAndView updateStudent(@ModelAttribute("odevForm") Odev Odev ){
				
		    odevService.saveOrUpdate(Odev);

			return new ModelAndView("redirect:/odev/odevlist");

		
			
		}
	
	 
	 @RequestMapping(value="/odevlist",method=RequestMethod.GET)
		public ModelAndView odevList(){
			
			ModelAndView model=new ModelAndView();
			
		    List<Odev> odevListesi=odevService.getAllHomeworks();
		    model.addObject("odevListesi", odevListesi);
		    
            Odev Odev=new Odev();

			model.addObject("odevForm", Odev);
			
			model.setViewName("odevlist");
			return model;
			
		}
	
	 
	 
	 
	 
	    @RequestMapping(value="/updateHomework/{id}",method=RequestMethod.GET)
		public ModelAndView updateHomework(@PathVariable("id")  Long id){
			
		    Odev Odev=odevService.getHomeworkById(id);
			
			ModelAndView model=new ModelAndView();
				
			model.addObject("odevForm", Odev);
			model.setViewName("odevform");
			return model;
			
		}
	
	   
	    
	     @RequestMapping(value="/deleteHomework/{id}", method=RequestMethod.GET)
		 public ModelAndView deleteHomework(@PathVariable("id") long id) {
			
			odevService.deleteHomework(id);  //Odev Tablosudan İlgili Ödevi Silen Kod
			
			return new ModelAndView("redirect:/odev/odevlist");
			
		 }
	     
	     
	     @RequestMapping(value="/giveMarktoHomework/{id}",method=RequestMethod.GET)
		 public ModelAndView giveMarkAndSaveHomework(@PathVariable("id")  Long id ){
				
		
	    	odevService.giveMarkAndSaveHomework(id);
	    					
			return new ModelAndView("redirect:/odev/odevNotList");
			
			
		 }
	      
	     
	     @RequestMapping(value="/odevNotList",method=RequestMethod.GET)
			public ModelAndView odevNotList(){
				
				ModelAndView model=new ModelAndView();
				
			    List<OgrenciNot> odevNotlist=odevService.getAllHomeworksNotes();
				model.addObject("odevNotlist", odevNotlist);
				
				OgrenciNot OgrenciNot=new OgrenciNot();	
				model.addObject("ogrenciNotForm", OgrenciNot);
				
				model.setViewName("odevnotlist");
				return model;
				
			}
	     
	     
	     @RequestMapping(value="/updateHMWNote/{id}",method=RequestMethod.GET)
			public ModelAndView updateHMWNote(@PathVariable("id")  Long id){
				
			    OgrenciNot ogrenciNot=odevService.getHomeworkNoteById(id);
				
				ModelAndView model=new ModelAndView();
					
				model.addObject("ogrenciNot", ogrenciNot);
				model.setViewName("odevnotvermeform");
				return model;
				
			}
	     
	     
	   @RequestMapping(value="/saveHomeworkNote",method=RequestMethod.POST)
	 	public ModelAndView saveHomeworkNote(@ModelAttribute("ogrenciNot") OgrenciNot ogrenciNot ){
	 			
		   odevService.saveOrUpdate(ogrenciNot);

	 	   return new ModelAndView("redirect:/odev/odevNotList");
	 		
	 	}
	   
	   

	     @RequestMapping(value="/deleteHMWNote/{id}", method=RequestMethod.GET)
		 public ModelAndView deleteHMWNote(@PathVariable("id") long id) {
			
			
			odevService.deleteHMWNote(id);
		  
			return new ModelAndView("redirect:/odev/odevNotList");
			
		 }
	     
	     
	                                
	        @RequestMapping(value="/querySuccess/{NO}",method=RequestMethod.GET)
			public ModelAndView successList(@PathVariable("NO")  long NO){
				
				ModelAndView model=new ModelAndView();
				
			    List<OgrenciNot> basariListesi=odevService.getAllHomeworkNotesbyStudentId(NO);
			    
                OgrenciBasariDetay ogrenciBasariDetay=odevService.getHomeworkDetailbyStudentNO(NO);
			    
			    
				model.addObject("ogrenciBasariDetay", ogrenciBasariDetay);
				
				model.addObject("basariListesi", basariListesi);
				model.setViewName("basarilist");
				return model;
				
			}
	        
	        
	        @RequestMapping(value="/querySuccessDemo/{NO}",method=RequestMethod.GET)
			public ModelAndView querySuccessDetail(@PathVariable("NO")  long NO){
				
				ModelAndView model=new ModelAndView();
				
			    OgrenciBasariDetay ogrenciBasariDetay=odevService.getHomeworkDetailbyStudentNO(NO);
			    
			    System.out.println(
			    "Ödev Başarısı: "+ogrenciBasariDetay.getOdev_Basarisi()+"   "
			    +"Toplam Verilen Ödev Sayısı: "+ogrenciBasariDetay.getToplam_Verilen_Odev_Sayisi()
			    +"Teslim Edilmeyen Ödev Sayısı: "+ogrenciBasariDetay.getTeslim_Edilmeyen_Odev_Sayisi()
			    +"Teslim Edilen Ödev Sayısı: "+ogrenciBasariDetay.getTeslim_Edilen_Odev_Sayisi()  );
			    
			    
				model.addObject("ogrenciBasariDetay", ogrenciBasariDetay);
				model.setViewName("basarilist");
				return model;
				
			}
	        
	        
	        
	        
	        @RequestMapping(value="/siniflistesonuc",method=RequestMethod.GET)
	    	public ModelAndView sinifaGoreOdevlistele(@ModelAttribute("odevForm") Odev odev ){
	    		
	    		ModelAndView model=new ModelAndView();
	    		List<Odev> odevListesi=odevService.getAllHomeworksByClass(odev.getVerilensinif());
	    		
	    		model.addObject("odevListesi", odevListesi);
	    		model.setViewName("odevlist");
	    		return model;
	    		
	    	}
	        
	        @RequestMapping(value="/odevSinifNotList",method=RequestMethod.GET)
	    	public ModelAndView sinifaGoreOdevNotListele(@ModelAttribute("ogrenciNotForm") OgrenciNot ogrenciNot ){
	    		
	    		ModelAndView model=new ModelAndView();
	    		List<OgrenciNot> odevNotlist=odevService.getAllHomeworkNotesByClass(ogrenciNot.getSinifi());
	    		
	    		model.addObject("odevNotlist", odevNotlist);
	    		model.setViewName("odevnotlist");
	    		return model;
	    		
	    	}
	     
	     
	     
	     
	     
	     //odevformunda sınıf seçmeye yarayan kod!!!
	     @ModelAttribute("verilensiniflar")
	     public Map<String, String> verilensiniflar() {
	        Map<String, String> verilensiniflar = new HashMap<String, String>();
	        verilensiniflar.put("8/A", "8/A");
	        verilensiniflar.put("8/B", "8/B");
	        verilensiniflar.put("9/A", "9/A");
	        verilensiniflar.put("9/B", "9/B");
	        return verilensiniflar;
	     }
	    
}
