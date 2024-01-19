package com.aiwis.aiwis_backend.model;

import lombok.*;
import org.springframework.data.annotation.Id;
import org.springframework.data.relational.core.mapping.Table;

@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
@Builder
@Table(name = "medicines")
public class Medicine {
    @Id
    private Integer id;
    private String name;
    private String description;
    private String unit;
    private Double price;
    private String image_url;
}
