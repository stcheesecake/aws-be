package com.BMS.backend.dto.Cover;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class DalleRequest {
    private String model = "dall-e-3";
    private String prompt;
    private int n = 1;
    private String size = "1024x1024";
}