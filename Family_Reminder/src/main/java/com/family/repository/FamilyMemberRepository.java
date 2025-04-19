package com.family.repository;

//FamilyMemberRepository.java
import org.springframework.data.jpa.repository.JpaRepository;

import com.family.entity.FamilyMember;

public interface FamilyMemberRepository extends JpaRepository<FamilyMember, Long> {
}
