package org.kustova.refrigerators.service.implement;

import lombok.RequiredArgsConstructor;
import org.kustova.refrigerators.entity.User;
import org.kustova.refrigerators.repository.UserRepository;
import org.kustova.refrigerators.service.UserService;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@RequiredArgsConstructor
public class UserServiceImpl implements UserService {
    private final UserRepository userRepository;

    @Override
    public User findByUsername(String username) {
        return userRepository.findByUsername(username);
    }

    @Override
    public User findById(Integer id) {
        return userRepository.findById(id).orElse(null);
    }

    @Override
    public void saveUser(User user) {
        userRepository.save(user);
    }

    @Override
    public List<User> findAllUsers() {
        return userRepository.findAll();
    }

    @Override
    public void deleteOperator(Integer id) {
userRepository.deleteById(id);
    }


}
