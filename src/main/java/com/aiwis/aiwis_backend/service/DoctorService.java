package com.aiwis.aiwis_backend.service;

import com.aiwis.aiwis_backend.model.Doctor;
import reactor.core.publisher.Flux;
import reactor.core.publisher.Mono;

public interface DoctorService {
    Flux<Doctor> saveAllDoctors(Flux<Doctor> doctors);

    Mono<Doctor> saveSingleDoctor(Doctor doctor);

    Mono<Doctor> updateDoctor(Long id, Doctor doctor);

    Mono<Doctor> findDoctorById(Long id);

    Flux<Doctor> findAllDoctors();

    Mono<Void> deleteDoctorById(Long id);

    void deleteAll();
}
