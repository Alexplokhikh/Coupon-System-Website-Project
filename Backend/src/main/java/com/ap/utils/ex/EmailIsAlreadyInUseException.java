package com.ap.utils.ex;

public class EmailIsAlreadyInUseException extends RuntimeException{
    public EmailIsAlreadyInUseException(String message) {
        super(message);
    }

    public EmailIsAlreadyInUseException(String message, Throwable cause) {
        super(message, cause);
    }

    public EmailIsAlreadyInUseException(Throwable cause) {
        super(cause);
    }
}
