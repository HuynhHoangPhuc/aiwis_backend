package com.aiwis.aiwis_backend.controller;

import com.aiwis.aiwis_backend.model.Medicine;
import com.aiwis.aiwis_backend.service.MedicineService;
import lombok.RequiredArgsConstructor;
import org.springframework.web.bind.annotation.*;
import reactor.core.publisher.Flux;
import reactor.core.publisher.Mono;

@RestController
@RequiredArgsConstructor
@RequestMapping("/api/v1/medicines")
public class MedicineController {
    private final MedicineService medicineService;

    @PostMapping("/create")
    public Mono<Medicine> createMedicine(@RequestBody Medicine medicine) {
        return medicineService.saveSingleMedicine(medicine);
    }

    @PostMapping("/create-multiple")
    public Flux<Medicine> createMultipleMedicine(@RequestBody Flux<Medicine> medicines) {
        return medicineService.saveAllMedicines(medicines);
    }

    @GetMapping("/read-all")
    public Flux<Medicine> getAllMedicines() {
        return medicineService.findAllMedicines();
    }

    @GetMapping("/read/{id}")
    public Mono<Medicine> getMedicineById(@PathVariable Long id) {
        return medicineService.findMedicineById(id);
    }

    @PutMapping("/update/{id}")
    public Mono<Medicine> updateMedicine(@PathVariable Long id, @RequestBody Medicine medicine) {
        return medicineService.updateMedicine(id, medicine);
    }

    @DeleteMapping("/delete/{id}")
    public Mono<Void> deleteMedicine(@PathVariable Long id) {
        return medicineService.deleteMedicineById(id);
    }

    @DeleteMapping("/delete-all")
    public void deleteAll() {
        medicineService.deleteAll();
    }
}
