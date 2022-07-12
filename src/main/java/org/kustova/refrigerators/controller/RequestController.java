package org.kustova.refrigerators.controller;

import lombok.RequiredArgsConstructor;
import org.kustova.refrigerators.DTO.RequestDTO;
import org.kustova.refrigerators.service.RequestService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@Controller
@RequestMapping("/request")
@RequiredArgsConstructor
public class RequestController {
    private final RequestService requestService;

    @GetMapping
    public String findAllRequests(Model model) {
        List<RequestDTO> requests = requestService.findAllRequests();
        model.addAttribute("requests", requests);
        return "request";
    }

    @GetMapping("/delete")
    public String deleteRequest(@RequestParam Integer id) {
        requestService.deleteRequest(id);
        return "redirect:/request";
    }

    @GetMapping("/new")
    public String newRequest(Model model, RequestDTO request) {
        model.addAttribute("request", request);
        return "requestForm";
    }

    @GetMapping("/edit")
    public String updateRequest(@RequestParam Integer id, Model model) {
        RequestDTO request = requestService.findRequestById(id);
        model.addAttribute("request", request);
        return "requestForm";
    }

    @PostMapping(value = "/add")
    public String addRequest(@ModelAttribute("request") RequestDTO request) {
        requestService.saveRequest(request);
        return "redirect:/request";
    }


}
