package org.kustova.refrigerators.service;

import org.kustova.refrigerators.DTO.RefrigeratorDTO;
import org.kustova.refrigerators.entity.Refrigerator;

import java.util.List;

public interface RefrigeratorService {
    List<RefrigeratorDTO> findAllRefrigerators();
    Refrigerator saveRefrigerator (RefrigeratorDTO refrigerator);
    RefrigeratorDTO findRefrigeratorById (Integer id);
    void deleteRefrigerator (Integer id);
    List<Refrigerator> findAllRef();

}
