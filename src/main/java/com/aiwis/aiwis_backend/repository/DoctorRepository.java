package com.aiwis.aiwis_backend.repository;

import com.aiwis.aiwis_backend.model.Doctor;
import org.springframework.data.repository.reactive.ReactiveCrudRepository;

public interface DoctorRepository extends ReactiveCrudRepository<Doctor, Long> {
}
