package com.aiwis.aiwis_backend.service;

import com.aiwis.aiwis_backend.model.Medicine;
import com.aiwis.aiwis_backend.model.Medicine;
import reactor.core.publisher.Flux;
import reactor.core.publisher.Mono;

public interface MedicineService {
    Flux<Medicine> saveAllMedicines(Flux<Medicine> medicines);

    Mono<Medicine> saveSingleMedicine(Medicine medicine);

    Mono<Medicine> updateMedicine(Long id, Medicine medicine);

    Mono<Medicine> findMedicineById(Long id);

    Flux<Medicine> findAllMedicines();

    Mono<Void> deleteMedicineById(Long id);

    void deleteAll();
}
