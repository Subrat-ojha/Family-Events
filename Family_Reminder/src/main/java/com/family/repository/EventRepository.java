package com.family.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.family.entity.Event;

public interface EventRepository extends JpaRepository<Event,String> {

}
