package org.kustova.refrigerators.controller;

import lombok.RequiredArgsConstructor;
import org.kustova.refrigerators.DTO.RefrigeratorDTO;
import org.kustova.refrigerators.service.RefrigeratorService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.List;

import static org.kustova.refrigerators.utils.Constants.*;

@Controller
@RequestMapping(URL_REFRIGERATOR)
@RequiredArgsConstructor
public class RefrigeratorController {

    private final RefrigeratorService refrigeratorService;

    @GetMapping
    public String findAllRefrigerators(Model model) {
        List<RefrigeratorDTO> refrigerators = refrigeratorService.findAllRefrigerators();
        model.addAttribute(REFRIGERATORS, refrigerators);
        return REFRIGERATOR;
    }

    @GetMapping(URL_DELETE)
    public String deleteRefrigerator(@RequestParam Integer id) {
        refrigeratorService.deleteRefrigerator(id);
        return REDIRECT_URL_REFRIGERATOR;
    }

    @GetMapping(URL_NEW)
    public String newRefrigerator(Model model, RefrigeratorDTO refrigerator) {
        model.addAttribute(REFRIGERATOR, refrigerator);
        return REFRIGERATOR_FORM;
    }

    @GetMapping(URL_EDIT)
    public String updateRefrigerator(@RequestParam Integer id, Model model) {
        RefrigeratorDTO refrigerator = refrigeratorService.findRefrigeratorById(id);
        model.addAttribute(REFRIGERATOR, refrigerator);
        return REFRIGERATOR_FORM;
    }

    @PostMapping(value = URL_ADD)
    public String addRefrigerator(@ModelAttribute(REFRIGERATOR) RefrigeratorDTO refrigerator) {
        refrigeratorService.saveRefrigerator(refrigerator);
        return REDIRECT_URL_REFRIGERATOR;
    }
}
