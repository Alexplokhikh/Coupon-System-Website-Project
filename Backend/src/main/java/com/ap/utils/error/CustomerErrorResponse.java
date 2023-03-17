package com.ap.utils.error;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@NoArgsConstructor
@AllArgsConstructor
@Getter @Setter
public class CustomerErrorResponse {

    private int status;
    private String message;
    private long timestamp;

}
