package com.BMS.backend.api;

import com.BMS.backend.exception.ApiResponse;
import com.BMS.backend.dto.Auth.LoginRequest;
import com.BMS.backend.dto.Auth.RegisterRequest;
import com.BMS.backend.dto.Auth.TokenResponse;
import com.BMS.backend.service.AuthService;
import jakarta.validation.Valid;
import lombok.RequiredArgsConstructor;
import org.springframework.web.bind.annotation.*;

@RestController
@RequestMapping("api/v1/auth")
@RequiredArgsConstructor
public class AuthController {

    private final AuthService authService;

    @PostMapping("/register")
    public ApiResponse<String> register(@Valid @RequestBody RegisterRequest request){
        authService.register(request);
        return ApiResponse.created("Register Successfully");
    }

    @PostMapping("/login")
    public ApiResponse<TokenResponse> login(@Valid @RequestBody LoginRequest request){
        TokenResponse tokenResponse = authService.login(request);
        return ApiResponse.success(tokenResponse);
    }

}
