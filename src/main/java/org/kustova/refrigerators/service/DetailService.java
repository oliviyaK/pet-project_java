package org.kustova.refrigerators.service;

import org.kustova.refrigerators.DTO.DetailDTO;
import org.kustova.refrigerators.entity.Detail;

import java.util.List;

public interface DetailService {
    List<DetailDTO> findAllDetails();
    Detail saveDetail (DetailDTO detail);
    DetailDTO findDetailById (Integer id);
    void deleteDetail (Integer id);
}
