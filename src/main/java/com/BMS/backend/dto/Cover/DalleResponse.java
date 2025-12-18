package com.BMS.backend.dto.Cover;

import lombok.Data;
import lombok.Getter;
import lombok.Setter;

import java.util.List;

@Getter
@Setter
@Data
public class DalleResponse {
    private Long created;
    private List<DataItem> data;

    @Data
    public static class DataItem{
        private String url;
        private String revised_prompt;
    }
}
