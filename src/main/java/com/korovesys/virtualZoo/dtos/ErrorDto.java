package com.korovesys.virtualZoo.dtos;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.Setter;

import java.io.Serializable;

@Getter
@Setter
@AllArgsConstructor
public class ErrorDto implements Serializable {

    private String error;
}
