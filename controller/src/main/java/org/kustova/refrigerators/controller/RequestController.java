package org.kustova.refrigerators.controller;

import lombok.RequiredArgsConstructor;
import org.kustova.refrigerators.DTO.ClientDTO;
import org.kustova.refrigerators.DTO.RequestDTO;
import org.kustova.refrigerators.service.ClientService;
import org.kustova.refrigerators.service.RefrigeratorService;
import org.kustova.refrigerators.service.RequestService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.List;

import static org.kustova.refrigerators.utils.Constants.*;

@Controller
@RequestMapping(URL_REQUEST)
@RequiredArgsConstructor
public class RequestController {

    private final RequestService requestService;
    private final ClientService clientService;

    private final RefrigeratorService refrigeratorService;

    @GetMapping
    public String findAllRequests(Model model) {
        List<RequestDTO> requests = requestService.findAllRequests();
        model.addAttribute(REQUESTS, requests);
        return REQUEST;
    }

    @GetMapping(URL_DELETE)
    public String deleteRequest(@RequestParam Integer id) {
        requestService.deleteRequest(id);
        return REDIRECT_URL_REQUEST;
    }

    @GetMapping(URL_NEW)
    public String newRequest(Model model, RequestDTO request) {
        model.addAttribute(REFRIGERATOR, refrigeratorService.findAllRef());
        model.addAttribute(REQUEST, request);
        return REQUEST_FORM;
    }

    @GetMapping(URL_ADD)
    public String addClient(@RequestParam Integer idC, Model model, RequestDTO request) {
        ClientDTO client = clientService.findClientById(idC);
        model.addAttribute(CLIENT, client);
        model.addAttribute(REQUEST, request);
        model.addAttribute(REFRIGERATOR, refrigeratorService.findAllRef());
        return REQUEST_FORM;
    }

    @GetMapping(URL_EDIT)
    public String updateRequest(@RequestParam Integer id, Model model) {
        RequestDTO request = requestService.findRequestById(id);
        model.addAttribute(REQUEST, request);
        model.addAttribute(REFRIGERATOR, refrigeratorService.findAllRef());
        return REQUEST_FORM;
    }

    @PostMapping(value = URL_ADD)
    public String addRequest(@ModelAttribute(REQUEST) RequestDTO request) {
        requestService.saveRequest(request);
        return REDIRECT_URL_REQUEST;
    }
}
