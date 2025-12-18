package com.BMS.backend.dto.Cover;

import lombok.Getter;
import lombok.NoArgsConstructor;

@Getter
@NoArgsConstructor
public class CoverGenerateResponse {
    public Long bookId;
    public String bookCoverUrl;

    public CoverGenerateResponse(Long bookId, String bookCoverUrl) {
        this.bookId = bookId;
        this.bookCoverUrl = bookCoverUrl;
    }
}
