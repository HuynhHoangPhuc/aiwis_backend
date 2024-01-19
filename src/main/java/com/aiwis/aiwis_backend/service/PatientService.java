package com.aiwis.aiwis_backend.service;

import com.aiwis.aiwis_backend.model.Patient;
import reactor.core.publisher.Flux;
import reactor.core.publisher.Mono;

public interface PatientService {
    Flux<Patient> saveAllPatients(Flux<Patient> patients);

    Mono<Patient> saveSinglePatient(Patient patient);

    Mono<Patient> updatePatient(Long id, Patient patient);

    Mono<Patient> findPatientById(Long id);

    Flux<Patient> findAllPatients();

    Mono<Void> deletePatientById(Long id);

    void deleteAll();
}
