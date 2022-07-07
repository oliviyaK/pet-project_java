package org.kustova.refrigerators.controller;

import lombok.RequiredArgsConstructor;
import org.kustova.refrigerators.repository.DetailRepository;
import org.kustova.refrigerators.service.DetailService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/detail")
@RequiredArgsConstructor
public class DetailController {
    private final DetailService detailService;
    private DetailRepository detailRepository;

}
