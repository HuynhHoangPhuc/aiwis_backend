package com.aiwis.aiwis_backend.controller;

import com.aiwis.aiwis_backend.model.Blog;
import com.aiwis.aiwis_backend.service.BlogService;
import lombok.RequiredArgsConstructor;
import org.springframework.web.bind.annotation.*;
import reactor.core.publisher.Flux;
import reactor.core.publisher.Mono;

@RestController
@RequiredArgsConstructor
@RequestMapping("/api/v1/blogs")
public class BlogController {
    private final BlogService blogService;

    @PostMapping("/create")
    public Mono<Blog> createBlog(@RequestBody Blog blog) {
        return blogService.saveSingleBlog(blog);
    }

    @PostMapping("/create-multiple")
    public Flux<Blog> createMultipleBlog(@RequestBody Flux<Blog> blogs) {
        return blogService.saveAllBlogs(blogs);
    }

    @GetMapping("/read-all")
    public Flux<Blog> getAllBlogs() {
        return blogService.findAllBlogs();
    }

    @GetMapping("/read/{id}")
    public Mono<Blog> getBlogById(@PathVariable Long id) {
        return blogService.findBlogById(id);
    }

    @PutMapping("/update/{id}")
    public Mono<Blog> updateBlog(@PathVariable Long id, @RequestBody Blog blog) {
        return blogService.updateBlog(id, blog);
    }

    @DeleteMapping("/delete/{id}")
    public Mono<Void> deleteBlog(@PathVariable Long id) {
        return blogService.deleteBlogById(id);
    }

    @DeleteMapping("/delete-all")
    public void deleteAll() {
        blogService.deleteAll();
    }
}
