package org.kustova.refrigerators.controller;

import lombok.RequiredArgsConstructor;
import org.kustova.refrigerators.DTO.ClientDTO;
import org.kustova.refrigerators.repository.ClientRepository;
import org.kustova.refrigerators.service.ClientService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@Controller
@RequestMapping("/client")
@RequiredArgsConstructor
public class ClientController {
    private final ClientService clientService;
    private ClientRepository clientRepository;

    @GetMapping
    public String findAllClients(Model model) {
        List<ClientDTO> clients = clientService.findAllClients();
        model.addAttribute("clients", clients);
        return "client";
    }

    @GetMapping("/delete")
    public String deleteClient(@RequestParam Integer id) {
        clientService.deleteClient(id);
        return "redirect:/client";
    }

    @GetMapping("/new")
    public String newClient(Model model,ClientDTO client) {
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

}