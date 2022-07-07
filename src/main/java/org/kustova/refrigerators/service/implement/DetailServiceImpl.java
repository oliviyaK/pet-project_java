package org.kustova.refrigerators.service.implement;

import lombok.RequiredArgsConstructor;
import org.kustova.refrigerators.DTO.DetailDTO;
import org.kustova.refrigerators.converter.DetailConverter;
import org.kustova.refrigerators.converter.implement.DetailConverterImpl;
import org.kustova.refrigerators.entity.Detail;
import org.kustova.refrigerators.repository.DetailRepository;
import org.kustova.refrigerators.service.DetailService;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@RequiredArgsConstructor
public class DetailServiceImpl implements DetailService {
    private final DetailConverter detailConverter = new DetailConverterImpl();
    private final DetailRepository detailRepository;

    @Override
    public List<DetailDTO> findAllDetails() {
        List<Detail> details = detailRepository.findAll();
        return detailConverter.toListDto(details);
    }

    @Override
    public Detail saveDetail(DetailDTO detail) {
        return detailRepository.save(detailConverter.toEntity(detail));
    }

    @Override
    public DetailDTO findDetailById(Integer id) {
        return detailConverter.toDTO(detailRepository.findById(id).orElse(null));
    }

    @Override
    public void deleteDetail(Integer id) {
        detailRepository.deleteById(id);
    }
}
