package com.aiwis.aiwis_backend.model;

import lombok.*;
import org.springframework.data.annotation.Id;
import org.springframework.data.relational.core.mapping.Table;

@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
@Builder
@Table(name = "blogs")
public class Blog {
    @Id
    private Integer id;
    private String title;
    private String content;
    private String image_url;
    private String author;
}
