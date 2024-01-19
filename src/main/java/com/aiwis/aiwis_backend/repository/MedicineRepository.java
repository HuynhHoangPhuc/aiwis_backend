package com.aiwis.aiwis_backend.repository;

import com.aiwis.aiwis_backend.model.Medicine;
import org.springframework.data.repository.reactive.ReactiveCrudRepository;

public interface MedicineRepository extends ReactiveCrudRepository<Medicine, Long> {
}
