package com.aiwis.aiwis_backend.service.impl;

import com.aiwis.aiwis_backend.model.Medicine;
import com.aiwis.aiwis_backend.repository.MedicineRepository;
import com.aiwis.aiwis_backend.service.MedicineService;
import lombok.RequiredArgsConstructor;
import org.springframework.beans.BeanUtils;
import org.springframework.stereotype.Service;
import reactor.core.publisher.Flux;
import reactor.core.publisher.Mono;

@Service
@RequiredArgsConstructor
public class MedicineServiceImpl implements MedicineService {
    private final MedicineRepository medicineRepository;

    @Override
    public Flux<Medicine> saveAllMedicines(Flux<Medicine> medicines) {
        return medicineRepository.saveAll(medicines);
    }

    @Override
    public Mono<Medicine> saveSingleMedicine(Medicine medicine) {
        return medicineRepository.save(medicine);
    }

    @Override
    public Mono<Medicine> updateMedicine(Long id, Medicine medicine) {
        return medicineRepository.findById(id)
                .flatMap(existingMedicine -> {
                    BeanUtils.copyProperties(medicine, existingMedicine, "id");
                    return medicineRepository.save(existingMedicine);
                });
    }

    @Override
    public Mono<Medicine> findMedicineById(Long id) {
        return medicineRepository.findById(id);
    }

    @Override
    public Flux<Medicine> findAllMedicines() {
        return medicineRepository.findAll();
    }

    @Override
    public Mono<Void> deleteMedicineById(Long id) {
        return medicineRepository.deleteById(id);
    }

    @Override
    public void deleteAll() {
        medicineRepository.deleteAll().subscribe();
    }
}
