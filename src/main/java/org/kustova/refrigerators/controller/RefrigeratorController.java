package org.kustova.refrigerators.controller;

import lombok.RequiredArgsConstructor;
import org.kustova.refrigerators.DTO.RefrigeratorDTO;
import org.kustova.refrigerators.service.RefrigeratorService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@Controller
@RequestMapping("/refrigerator")
@RequiredArgsConstructor
public class RefrigeratorController {
    private final RefrigeratorService refrigeratorService;

    @GetMapping
    public String findAllRefrigerators(Model model) {
        List<RefrigeratorDTO> refrigerators = refrigeratorService.findAllRefrigerators();
        model.addAttribute("refrigerators", refrigerators);
        return "refrigerator";
    }

    @GetMapping("/delete")
    public String deleteRefrigerator(@RequestParam Integer id) {
        refrigeratorService.deleteRefrigerator(id);
        return "redirect:/refrigerator";
    }

    @GetMapping("/new")
    public String newRefrigerator(Model model, RefrigeratorDTO refrigerator) {
        model.addAttribute("refrigerator", refrigerator);
        return "refrigeratorForm";
    }

    @GetMapping("/edit")
    public String updateRefrigerator(@RequestParam Integer id, Model model) {
        RefrigeratorDTO refrigerator = refrigeratorService.findRefrigeratorById(id);
        model.addAttribute("refrigerator", refrigerator);
        return "refrigeratorForm";
    }

    @PostMapping(value = "/add")
    public String addRefrigerator(@ModelAttribute("refrigerator") RefrigeratorDTO refrigerator) {
        refrigeratorService.saveRefrigerator(refrigerator);
        return "redirect:/refrigerator";
    }
}
