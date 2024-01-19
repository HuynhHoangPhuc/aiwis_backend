package com.aiwis.aiwis_backend.service.impl;

import com.aiwis.aiwis_backend.model.Doctor;
import com.aiwis.aiwis_backend.repository.DoctorRepository;
import com.aiwis.aiwis_backend.service.DoctorService;
import lombok.RequiredArgsConstructor;
import org.springframework.beans.BeanUtils;
import org.springframework.stereotype.Service;
import reactor.core.publisher.Flux;
import reactor.core.publisher.Mono;

@Service
@RequiredArgsConstructor
public class DoctorServiceImpl implements DoctorService {
    private final DoctorRepository doctorRepository;

    @Override
    public Flux<Doctor> saveAllDoctors(Flux<Doctor> doctors) {
        return doctorRepository.saveAll(doctors);
    }

    @Override
    public Mono<Doctor> saveSingleDoctor(Doctor doctor) {
        return doctorRepository.save(doctor);
    }

    @Override
    public Mono<Doctor> updateDoctor(Long id, Doctor doctor) {
        return doctorRepository.findById(id)
                .flatMap(existingDoctor -> {
                    BeanUtils.copyProperties(doctor, existingDoctor, "id");
                    return doctorRepository.save(existingDoctor);
                });
    }

    @Override
    public Mono<Doctor> findDoctorById(Long id) {
        return doctorRepository.findById(id);
    }

    @Override
    public Flux<Doctor> findAllDoctors() {
        return doctorRepository.findAll();
    }

    @Override
    public Mono<Void> deleteDoctorById(Long id) {
        return doctorRepository.deleteById(id);
    }

    @Override
    public void deleteAll() {
        doctorRepository.deleteAll().subscribe();
    }
}
