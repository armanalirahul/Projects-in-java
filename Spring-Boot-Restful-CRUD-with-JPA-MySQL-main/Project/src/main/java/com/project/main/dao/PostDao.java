package com.project.main.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.project.main.model.Post;

@Repository
public interface PostDao extends JpaRepository<Post, Integer> {

}
