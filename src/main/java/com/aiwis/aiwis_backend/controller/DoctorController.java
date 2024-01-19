package com.aiwis.aiwis_backend.controller;

import com.aiwis.aiwis_backend.model.Doctor;
import com.aiwis.aiwis_backend.service.DoctorService;
import lombok.RequiredArgsConstructor;
import org.springframework.web.bind.annotation.*;
import reactor.core.publisher.Flux;
import reactor.core.publisher.Mono;

@RestController
@RequiredArgsConstructor
@RequestMapping("/api/v1/doctors")
public class DoctorController {
    private final DoctorService doctorService;

    @PostMapping("/create")
    public Mono<Doctor> createDoctor(@RequestBody Doctor doctor) {
        return doctorService.saveSingleDoctor(doctor);
    }

    @PostMapping("/create-multiple")
    public Flux<Doctor> createMultipleDoctor(@RequestBody Flux<Doctor> doctors) {
        return doctorService.saveAllDoctors(doctors);
    }

    @GetMapping("/read-all")
    public Flux<Doctor> getAllDoctors() {
        return doctorService.findAllDoctors();
    }

    @GetMapping("/read/{id}")
    public Mono<Doctor> getDoctorById(@PathVariable Long id) {
        return doctorService.findDoctorById(id);
    }

    @PutMapping("/update/{id}")
    public Mono<Doctor> updateDoctor(@PathVariable Long id, @RequestBody Doctor doctor) {
        return doctorService.updateDoctor(id, doctor);
    }

    @DeleteMapping("/delete/{id}")
    public Mono<Void> deleteDoctor(@PathVariable Long id) {
        return doctorService.deleteDoctorById(id);
    }

    @DeleteMapping("/delete-all")
    public void deleteAll() {
        doctorService.deleteAll();
    }
}
