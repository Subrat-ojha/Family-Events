package com.family.entity;

//FamilyMember.java (Entity)
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;

@Entity
public class FamilyMember {

 @Id
 @GeneratedValue(strategy = GenerationType.IDENTITY)
 private Long id;

 private String name;
 private String gender;
 private String dob; // or LocalDate if preferred

 // Constructors
 public FamilyMember() {}

 public FamilyMember(String name, String gender, String dob) {
     this.name = name;
     this.gender = gender;
     this.dob = dob;
 }

public Long getId() {
	return id;
}

public void setId(Long id) {
	this.id = id;
}

public String getName() {
	return name;
}

public void setName(String name) {
	this.name = name;
}

public String getGender() {
	return gender;
}

public void setGender(String gender) {
	this.gender = gender;
}

public String getDob() {
	return dob;
}

public void setDob(String dob) {
	this.dob = dob;
}

@Override
public String toString() {
	return "FamilyMember [id=" + id + ", name=" + name + ", gender=" + gender + ", dob=" + dob + "]";
}

 // Getters and Setters
 
}
