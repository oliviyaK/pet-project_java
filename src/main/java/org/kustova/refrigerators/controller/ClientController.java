package org.kustova.refrigerators.controller;

import lombok.RequiredArgsConstructor;
import org.kustova.refrigerators.DTO.ClientDTO;
import org.kustova.refrigerators.entity.Request;
import org.kustova.refrigerators.service.ClientService;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@Controller
@RequestMapping("/client")
@RequiredArgsConstructor
public class ClientController {
    private final ClientService clientService;


    @GetMapping
    public String findAllClients(Model model, @RequestParam(value = "page", required = false, defaultValue = "1")
    int currentPage,
                                 @RequestParam(value = "sortField", required = false, defaultValue = "name")
                                 String field,
                                 @RequestParam(value = "sortDir", required = false, defaultValue = "ASC")
                                 String sortDir,
                                 @RequestParam(value = "size", required = false, defaultValue = "6")
                                 int size,
                                 @RequestParam(value = "clientName", required = false, defaultValue = "")
                                 String clientName) {
        Page<ClientDTO> page = clientService.findField(clientName, field, sortDir, currentPage, size);
        int totalPages = page.getTotalPages();
        long totalElement = page.getTotalElements();
        List<ClientDTO> clients = page.getContent();
        model.addAttribute("currentPage", currentPage);
        model.addAttribute("totalPage", totalPages);
        model.addAttribute("totalElement", totalElement);
        model.addAttribute("sortField", field);
        model.addAttribute("clientName", clientName);
        model.addAttribute("sortDir", sortDir);
        model.addAttribute("reverseSortDir", Sort.Direction.ASC.name().equals(sortDir) ? "DESC" : "ASC");
        model.addAttribute("clients", clients);
        return "client";
    }

    @GetMapping("/delete")
    public String deleteClient(@RequestParam Integer id) {
        clientService.deleteClient(id);
        return "redirect:/client";
    }

    @GetMapping("/new")
    public String newClient(Model model, ClientDTO client) {
        model.addAttribute("client", client);
        return "clientForm";
    }

    @GetMapping("/edit")
    public String updateClient(@RequestParam Integer id, Model model) {
        ClientDTO client = clientService.findClientById(id);
        model.addAttribute("client", client);
        return "clientForm";
    }

    @PostMapping(value = "/add")
    public String addClient(@ModelAttribute("client") ClientDTO client) {
        clientService.saveClient(client);
        return "redirect:/client";
    }

    @GetMapping("/requestInfo")
    public String requestInfo(@RequestParam Integer id, Model model) {
        List<Request> requestOfClient = clientService.findRequest(id);
        ClientDTO client = clientService.findClientById(id);
        model.addAttribute("requests", requestOfClient);
        model.addAttribute("client", client);
        return "requestInfo";
    }

}
