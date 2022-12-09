package com.project.main.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.project.main.dao.PostDao;
import com.project.main.model.Post;

@RestController
public class Main {

	@Autowired
	private PostDao postDao;

	@GetMapping("/insert")
	public ModelAndView insert() {
		return new ModelAndView("insert", "command", new Post());
	}

	@PostMapping("/save")
	public ModelAndView save(@ModelAttribute("post") Post post) {
		postDao.save(post);
		return new ModelAndView("redirect:/fetchAll");
	}

	@GetMapping("/updateById")
	public ModelAndView updateById() {
		return new ModelAndView("update", "command", new Post());
	}

	@PostMapping("/update")
	public ModelAndView update(@ModelAttribute("post") Post post) {
		postDao.findById(post.getId()).ifPresent(post1 -> {
			post1.setFname(post.getFname());
			post1.setLname(post.getLname());
			postDao.save(post1);
		});
		List<Post> list = new ArrayList<>();
		list.add(postDao.findById(post.getId()).get());
		return new ModelAndView("updateById", "list", list);
	}

	@GetMapping("/fetchById")
	public ModelAndView fetchById() {
		return new ModelAndView("fetchById", "command", new Post());
	}

	@PostMapping("/fetch")
	public ModelAndView fetch(@ModelAttribute("post") Post post) {
		List<Post> list = new ArrayList<>();
		list.add(postDao.findById(post.getId()).get());
		return new ModelAndView("fetch", "list", list);
	}

	@GetMapping("/fetchAll")
	public ModelAndView fetchAll() {
		List<Post> list = new ArrayList<>();
		list = postDao.findAll();
		return new ModelAndView("fetchAll", "list", list);
	}

	@GetMapping("/deleteById")
	public ModelAndView deleteById() {
		return new ModelAndView("deleteById", "command", new Post());
	}

	@PostMapping("/delete")
	public ModelAndView delete(@ModelAttribute("post") Post post) {
		postDao.deleteById(post.getId());
		return new ModelAndView("redirect:/fetchAll");
	}

	@GetMapping("/deleteAll")
	public ModelAndView deleteAll() {
		postDao.deleteAll();
		return new ModelAndView("redirect:/fetchAll");
	}
}
