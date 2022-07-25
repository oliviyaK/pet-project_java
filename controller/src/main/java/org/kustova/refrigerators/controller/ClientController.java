package org.kustova.refrigerators.controller;

import lombok.RequiredArgsConstructor;
import org.kustova.refrigerators.DTO.ClientDTO;
import org.kustova.refrigerators.Entity.Request;
import org.kustova.refrigerators.service.ClientService;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.List;

import static org.kustova.refrigerators.utils.Constants.*;

@Controller
@RequestMapping(URL_CLIENT)
@RequiredArgsConstructor
public class ClientController {
    private final ClientService clientService;

    @GetMapping
    public String findAllClients(Model model, @RequestParam(value = PAGE, required = false, defaultValue = "1")
    int currentPage,
                                 @RequestParam(value = SORT_FIELD, required = false, defaultValue = NAME)
                                 String field,
                                 @RequestParam(value = SORT_DIRECTION, required = false, defaultValue = ASC)
                                 String sortDir,
                                 @RequestParam(value = SIZE, required = false, defaultValue = "6")
                                 int size,
                                 @RequestParam(value = CLIENT_NAME, required = false, defaultValue = "")
                                 String clientName) {
        Page<ClientDTO> page = clientService.findField(clientName, field, sortDir, currentPage, size);
        int totalPages = page.getTotalPages();
        long totalElement = page.getTotalElements();
        List<ClientDTO> clients = page.getContent();
        model.addAttribute(CURRENT_PAGE, currentPage);
        model.addAttribute(TOTAL_PAGE, totalPages);
        model.addAttribute(TOTAL_ELEMENT, totalElement);
        model.addAttribute(SORT_FIELD, field);
        model.addAttribute(CLIENT_NAME, clientName);
        model.addAttribute(SORT_DIRECTION, sortDir);
        model.addAttribute(REVERSE_SORT_DIRECTION, Sort.Direction.ASC.name().equals(sortDir) ? DESC : ASC);
        model.addAttribute(CLIENTS, clients);
        return CLIENT;
    }

    @GetMapping(URL_DELETE)
    public String deleteClient(@RequestParam Integer id) {
        clientService.deleteClient(id);
        return REDIRECT_URL_CLIENT;
    }

    @GetMapping(URL_NEW)
    public String newClient(Model model, ClientDTO client) {
        model.addAttribute(CLIENT, client);
        return CLIENT_FORM;
    }

    @GetMapping(URL_EDIT)
    public String updateClient(@RequestParam Integer id, Model model) {
        ClientDTO client = clientService.findClientById(id);
        model.addAttribute(CLIENT, client);
        return CLIENT_FORM;
    }

    @PostMapping(value = URL_ADD)
    public String addClient(@ModelAttribute(CLIENT) ClientDTO client) {
        clientService.saveClient(client);
        return REDIRECT_URL_CLIENT;
    }

    @GetMapping(URL_REQUEST_INFO)
    public String requestInfo(@RequestParam Integer id, Model model) {
        List<Request> requestOfClient = clientService.findRequest(id);
        ClientDTO client = clientService.findClientById(id);
        model.addAttribute(REQUESTS, requestOfClient);
        model.addAttribute(CLIENT, client);
        return REQUEST_INFO;
    }
}
