package com.aiwis.aiwis_backend.model;

import lombok.*;
import org.springframework.data.annotation.Id;
import org.springframework.data.relational.core.mapping.Table;

@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
@Builder
@Table(name = "doctors")
public class Doctor {
    @Id
    private Integer id;
    private String name;
    private String phone;
    private int experience;
    private String personal_id;
    private boolean certificate;
    private String image_url;
    private String password;
}
