package com.aiwis.aiwis_backend.service;

import com.aiwis.aiwis_backend.model.Blog;
import reactor.core.publisher.Flux;
import reactor.core.publisher.Mono;

public interface BlogService {
    Flux<Blog> saveAllBlogs(Flux<Blog> blogs);

    Mono<Blog> saveSingleBlog(Blog blog);

    Mono<Blog> updateBlog(Long id, Blog blog);

    Mono<Blog> findBlogById(Long id);

    Flux<Blog> findAllBlogs();

    Mono<Void> deleteBlogById(Long id);

    void deleteAll();
}
