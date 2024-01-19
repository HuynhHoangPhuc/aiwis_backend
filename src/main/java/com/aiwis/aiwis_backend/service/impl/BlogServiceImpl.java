package com.aiwis.aiwis_backend.service.impl;

import com.aiwis.aiwis_backend.model.Blog;
import com.aiwis.aiwis_backend.repository.BlogRepository;
import com.aiwis.aiwis_backend.service.BlogService;
import lombok.RequiredArgsConstructor;
import org.springframework.beans.BeanUtils;
import org.springframework.stereotype.Service;
import reactor.core.publisher.Flux;
import reactor.core.publisher.Mono;

@Service
@RequiredArgsConstructor
public class BlogServiceImpl implements BlogService {
    private final BlogRepository blogRepository;

    @Override
    public Flux<Blog> saveAllBlogs(Flux<Blog> blogs) {
        return blogRepository.saveAll(blogs);
    }

    @Override
    public Mono<Blog> saveSingleBlog(Blog blog) {
        return blogRepository.save(blog);
    }

    @Override
    public Mono<Blog> updateBlog(Long id, Blog blog) {
        return blogRepository.findById(id)
                .flatMap(existingBlog -> {
                    BeanUtils.copyProperties(blog, existingBlog, "id");
                    return blogRepository.save(existingBlog);
                });
    }

    @Override
    public Mono<Blog> findBlogById(Long id) {
        return blogRepository.findById(id);
    }

    @Override
    public Flux<Blog> findAllBlogs() {
        return blogRepository.findAll();
    }

    @Override
    public Mono<Void> deleteBlogById(Long id) {
        return blogRepository.deleteById(id);
    }

    @Override
    public void deleteAll() {
        blogRepository.deleteAll().subscribe();
    }
}
