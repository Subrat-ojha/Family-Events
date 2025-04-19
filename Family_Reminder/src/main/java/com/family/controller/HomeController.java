package com.family.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.family.entity.Event;
import com.family.entity.FamilyMember;
import com.family.entity.GiftNote;
import com.family.repository.EventRepository;
import com.family.repository.FamilyMemberRepository;
import com.family.repository.GiftNoteRepopsitory;

@Controller
public class HomeController {

	@Autowired
	private FamilyMemberRepository familyRepo;
	
	
	@Autowired
	private EventRepository eventRepository;
	
	@Autowired
	private GiftNoteRepopsitory giftNoteRepository;
	
	@GetMapping("/")
	public String getHome() {
		return "home";
	}
	

	 @GetMapping("/addFamily")
	 public String showAddFamilyForm() {
	    
	     return "addFamily"; // JSP page
	 }

	 @PostMapping("/addFamily")
	 public String saveFamilyMember(@RequestParam String name,
			 @RequestParam String dob,@RequestParam String gender,Model model) {
		 
		 FamilyMember familyMember=new FamilyMember(name,gender,dob);
	     familyRepo.save(familyMember);
	    model.addAttribute("familyMember",familyMember);
	    model.addAttribute("msg","Family member Added succesfully");
	     return "addFamily";
	 }

	 
	 
	 @GetMapping("/addEvent")
	 public String showAddEventForm(Model model) {
	    
	     return "addEvent"; // JSP page
	 }

	 @PostMapping("/addEvent")
	 public String saveEvent(@RequestParam String eventName,
			 @RequestParam String eventDate,Model model) {
         
		 Event event =new Event(eventName,eventDate);
		 eventRepository.save(event);
		 model.addAttribute("event",event);
		 model.addAttribute("msg","Event added succesfully");
		 
	     return "addEvent";
	 }
	 
	 
	 @PostMapping("/calenderView")
	 public String saveCalender() {

	     return "calenderView";
	 }
	 
	 @GetMapping("/calenderView")
	 public String showCalendarView(Model model) {
	     List<Event> events = eventRepository.findAll();
	     model.addAttribute("events", events);
	     return "calenderView";
	 }


	 
	 @GetMapping("/giftNotes")
	 public String showGift(Model model) {
		 List<GiftNote> notes = giftNoteRepository.findAll(); // Or fetch manually
		    model.addAttribute("giftNotes", notes);
		  
		 return "giftNotes";
	 }
	
	 @PostMapping("/giftNotes")
	 public String saveGift( @RequestParam String message) 
	{
			    giftNoteRepository.save(new GiftNote(message));
			    return "giftNotes";
	 }
	
}
