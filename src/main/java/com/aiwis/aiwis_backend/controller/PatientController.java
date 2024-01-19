package com.aiwis.aiwis_backend.controller;

import com.aiwis.aiwis_backend.model.Patient;
import com.aiwis.aiwis_backend.service.PatientService;
import lombok.RequiredArgsConstructor;
import org.springframework.web.bind.annotation.*;
import reactor.core.publisher.Flux;
import reactor.core.publisher.Mono;

@RestController
@RequiredArgsConstructor
@RequestMapping("/api/v1/patients")
public class PatientController {
    private final PatientService patientService;

    @PostMapping("/create")
    public Mono<Patient> createPatient(@RequestBody Patient patient) {
        return patientService.saveSinglePatient(patient);
    }

    @PostMapping("/create-multiple")
    public Flux<Patient> createMultiplePatient(@RequestBody Flux<Patient> patients) {
        return patientService.saveAllPatients(patients);
    }

    @GetMapping("/read-all")
    public Flux<Patient> getAllPatients() {
        return patientService.findAllPatients();
    }

    @GetMapping("/read/{id}")
    public Mono<Patient> getPatientById(@PathVariable Long id) {
        return patientService.findPatientById(id);
    }

    @PutMapping("/update/{id}")
    public Mono<Patient> updatePatient(@PathVariable Long id, @RequestBody Patient patient) {
        return patientService.updatePatient(id, patient);
    }

    @DeleteMapping("/delete/{id}")
    public Mono<Void> deletePatient(@PathVariable Long id) {
        return patientService.deletePatientById(id);
    }

    @DeleteMapping("/delete-all")
    public void deleteAll() {
        patientService.deleteAll();
    }
}
