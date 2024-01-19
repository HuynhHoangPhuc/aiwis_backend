package com.aiwis.aiwis_backend.repository;

import com.aiwis.aiwis_backend.model.Patient;
import org.springframework.data.repository.reactive.ReactiveCrudRepository;

public interface PatientRepository extends ReactiveCrudRepository<Patient, Long> {
}
