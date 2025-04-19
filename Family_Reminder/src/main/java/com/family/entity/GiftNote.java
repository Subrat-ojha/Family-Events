package com.family.entity;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import lombok.NoArgsConstructor;

@Entity
public class GiftNote {
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
    private int id;
    private String message;

    // Constructors
    public GiftNote() {}
    public GiftNote(String message) {
  
        this.message = message;
    }


    public String getMessage() { return message; }
    public void setMessage(String message) { this.message = message; }
}
