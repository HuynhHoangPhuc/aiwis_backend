package com.aiwis.aiwis_backend.repository;

import com.aiwis.aiwis_backend.model.Blog;
import com.aiwis.aiwis_backend.model.Doctor;
import org.springframework.data.repository.reactive.ReactiveCrudRepository;

public interface BlogRepository extends ReactiveCrudRepository<Blog, Long> {
}
