package com.bitsu.social_media.service;

import com.bitsu.social_media.dto.AuthenticationResponse;
import com.bitsu.social_media.dto.LoginRequest;
import com.bitsu.social_media.dto.RegisterRequest;
import com.bitsu.social_media.model.Role;
import com.bitsu.social_media.model.User;
import com.bitsu.social_media.repository.UserRepo;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import org.mockito.InjectMocks;
import org.mockito.Mock;
import org.mockito.MockitoAnnotations;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.security.crypto.password.PasswordEncoder;

import java.util.Optional;

import static org.junit.jupiter.api.Assertions.*;
import static org.mockito.ArgumentMatchers.any;
import static org.mockito.Mockito.*;

public class AuthServiceTest {
    @Mock
    private UserRepo userRepo;

    @Mock
    private PasswordEncoder passwordEncoder;

    @Mock
    private JwtService jwtService;

    @Mock
    private AuthenticationManager authenticationManager;

    @InjectMocks
    private AuthService authService;

    @BeforeEach
    void setUp() {
        MockitoAnnotations.openMocks(this);
    }

    @Test
    void register_ShouldReturnAuthenticationResponse() {
        RegisterRequest request = new RegisterRequest();
        request.setFirstname("John");
        request.setLastname("Doe");
        request.setUsername("johndoe");
        request.setPassword("password");

        User user = User.builder()
                .firstname("John")
                .lastname("Doe")
                .username("johndoe")
                .password("encodedPassword")
                .role(Role.USER)
                .build();

        when(passwordEncoder.encode(anyString())).thenReturn("encodedPassword");
        when(userRepo.save(any(User.class))).thenReturn(user);
        when(jwtService.generateToken(any(User.class))).thenReturn("jwtToken");

        AuthenticationResponse response = authService.register(request);

        assertNotNull(response);
        assertEquals("jwtToken", response.getToken());
    }

    @Test
    void login_ShouldReturnAuthenticationResponse() {
        LoginRequest request = new LoginRequest();
        request.setUsername("johndoe");
        request.setPassword("password");

        User user = User.builder()
                .id(1)
                .username("johndoe")
                .password("encodedPassword")
                .profilePicture("profilePic")
                .bio("bio")
                .firstname("John")
                .lastname("Doe")
                .build();

        when(userRepo.findByUsername(anyString())).thenReturn(Optional.of(user));
        when(jwtService.generateToken(anyMap(), any(User.class))).thenReturn("jwtToken");

        AuthenticationResponse response = authService.login(request);

        assertNotNull(response);
        assertEquals("jwtToken", response.getToken());
    }

    @Test
    void login_ShouldThrowUsernameNotFoundException() {
        LoginRequest request = new LoginRequest();
        request.setUsername("johndoe");
        request.setPassword("password");

        when(userRepo.findByUsername(anyString())).thenReturn(Optional.empty());

        assertThrows(UsernameNotFoundException.class, () -> authService.login(request));
    }
}
