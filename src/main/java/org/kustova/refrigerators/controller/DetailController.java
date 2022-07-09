package org.kustova.refrigerators.controller;

import lombok.RequiredArgsConstructor;
import org.kustova.refrigerators.DTO.DetailDTO;
import org.kustova.refrigerators.service.DetailService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@Controller
@RequestMapping("/detail")
@RequiredArgsConstructor
public class DetailController {
    private final DetailService detailService;

    @GetMapping
    public String findAllDetails(Model model) {
        List<DetailDTO> details = detailService.findAllDetails();
        model.addAttribute("details", details);
        return "detail";
    }

    @GetMapping("/delete")
    public String deleteDetail(@RequestParam Integer id) {
        detailService.deleteDetail(id);
        return "detail";
    }

    @GetMapping("/new")
    public String newDetail(Model model, DetailDTO detail) {
        model.addAttribute("detail", detail);
        return "detailForm";
    }

    @GetMapping("/edit")
    public String updateDetail(@RequestParam Integer id, Model model) {
        DetailDTO detail = detailService.findDetailById(id);
        model.addAttribute("detail", detail);
        return "detailForm";
    }

    @PostMapping(value = "/add")
    public String addDetail(@ModelAttribute("detail") DetailDTO detail, @RequestParam Integer id) {
        detailService.saveDetail(detail);
        return "redirect:/client";
    }
}
