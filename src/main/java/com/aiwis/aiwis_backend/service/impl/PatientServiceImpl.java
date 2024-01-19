package com.aiwis.aiwis_backend.service.impl;

import com.aiwis.aiwis_backend.model.Patient;
import com.aiwis.aiwis_backend.repository.PatientRepository;
import com.aiwis.aiwis_backend.service.PatientService;
import lombok.RequiredArgsConstructor;
import org.springframework.beans.BeanUtils;
import org.springframework.stereotype.Service;
import reactor.core.publisher.Flux;
import reactor.core.publisher.Mono;

@Service
@RequiredArgsConstructor
public class PatientServiceImpl implements PatientService {
    private final PatientRepository patientRepository;

    @Override
    public Flux<Patient> saveAllPatients(Flux<Patient> patients) {
        return patientRepository.saveAll(patients);
    }

    @Override
    public Mono<Patient> saveSinglePatient(Patient patient) {
        return patientRepository.save(patient);
    }

    @Override
    public Mono<Patient> updatePatient(Long id, Patient patient) {
        return patientRepository.findById(id)
                .flatMap(existingPatient -> {
                    BeanUtils.copyProperties(patient, existingPatient, "id");
                    return patientRepository.save(existingPatient);
                });
    }

    @Override
    public Mono<Patient> findPatientById(Long id) {
        return patientRepository.findById(id);
    }

    @Override
    public Flux<Patient> findAllPatients() {
        return patientRepository.findAll();
    }

    @Override
    public Mono<Void> deletePatientById(Long id) {
        return patientRepository.deleteById(id);
    }

    @Override
    public void deleteAll() {
        patientRepository.deleteAll().subscribe();
    }
}
