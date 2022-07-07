package org.kustova.refrigerators.service.implement;

import lombok.RequiredArgsConstructor;
import org.kustova.refrigerators.DTO.RefrigeratorDTO;
import org.kustova.refrigerators.converter.RefrigeratorConverter;
import org.kustova.refrigerators.converter.implement.RefrigeratorConverterImpl;
import org.kustova.refrigerators.entity.Refrigerator;
import org.kustova.refrigerators.repository.RefrigeratorRepository;
import org.kustova.refrigerators.service.RefrigeratorService;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@RequiredArgsConstructor
public class RefrigeratorServiceImpl implements RefrigeratorService {
    private final RefrigeratorConverter refrigeratorConverter = new RefrigeratorConverterImpl();
    private final RefrigeratorRepository refrigeratorRepository;

    @Override
    public List<RefrigeratorDTO> findAllRefrigerators() {
        List<Refrigerator> refrigerators = refrigeratorRepository.findAll();
        return refrigeratorConverter.toListDTO(refrigerators);
    }

    @Override
    public Refrigerator saveRefrigerator(RefrigeratorDTO refrigerator) {
        return refrigeratorRepository.save(refrigeratorConverter.toEntity(refrigerator));
    }

    @Override
    public RefrigeratorDTO findRefrigeratorById(Integer id) {
        return refrigeratorConverter.toDTO(refrigeratorRepository.findById(id).orElse(null));
    }

    @Override
    public void deleteRefrigerator(Integer id) {
        refrigeratorRepository.deleteById(id);
    }
}
