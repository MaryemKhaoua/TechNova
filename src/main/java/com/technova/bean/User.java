package com.technova.bean;

import jakarta.persistence.*;
import jakarta.validation.constraints.NotBlank;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.time.LocalDate;

@Entity
@Table(name = "users")
@Data
@AllArgsConstructor
@NoArgsConstructor
public class User {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Column(name = "first_name", nullable = false)
    @NotBlank(message = "The first name is required")
    private String firstName;

    @Column(name = "last_name", nullable = false)
    @NotBlank(message = "The last name is required")
    private String lastName;

    @Column(name = "piece_identification", nullable = false)
    @NotBlank(message = "The piece identification is required")
    private String pieceIdentification;

    @Column(name = "nationality", nullable = false)
    @NotBlank(message = "The nationality is required")
    private String nationality;
    @Column(name = "registrationDate",nullable = false)
    private LocalDate registrationDate;
    @Column(name = "expirationDate",nullable = false)
    private LocalDate expirationDate;


}
