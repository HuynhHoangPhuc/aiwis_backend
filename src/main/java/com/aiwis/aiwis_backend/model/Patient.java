package com.aiwis.aiwis_backend.model;

import lombok.*;
import org.springframework.data.annotation.Id;
import org.springframework.data.relational.core.mapping.Table;

@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
@Builder
@Table(name = "patients")
public class Patient {
    @Id
    private Integer id;
    private String name;
    private int age;
    private String phone;
    private String personal_id;
    private String health_insurance_id;
    private String password;
}
