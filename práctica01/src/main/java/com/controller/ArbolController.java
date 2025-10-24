package com.controller;

import com.domain.Arbol;
import com.services.ArbolService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

@Controller
@RequestMapping("/arbol")
public class ArbolController {

    @Autowired
    private ArbolService arbolService;

    @GetMapping
    public String mostrarArboles(Model model) {
        model.addAttribute("arboles", arbolService.getAllArboles());
        return "arbol/lista"; // templates/arbol/lista.html
    }

    @GetMapping("/nuevo") //USAR NUEVO EN EL LOCAL HOST, arbol/lista no funciona
    public String nuevoArbol(Model model) {
        model.addAttribute("arbol", new Arbol());
        return "arbol/form"; // templates/arbol/form.html
    }

    @GetMapping("/editar/{id}")
    public String editarArbol(@PathVariable Long id, Model model) {
        Arbol arbol = arbolService.getArbolById(id)
                .orElseThrow(() -> new IllegalArgumentException("Árbol no encontrado: " + id));
        model.addAttribute("arbol", arbol);
        return "arbol/form"; // templates/arbol/form.html
    }


    @PostMapping("/guardar")
    public String guardarArbol(@ModelAttribute("arbol") Arbol arbol) {
        arbolService.saveArbol(arbol);
        return "redirect:/arbol"; // redirige a la lista
    }

    @GetMapping("/eliminar/{id}")
    public String eliminarArbol(@PathVariable Long id) {
        arbolService.deleteArbol(id);
        return "redirect:/arbol"; // redirige a la lista
    }

    //quitar luego
    @GetMapping("/ping")
    @ResponseBody
    public String ping() {
        return "Controller funciona!";
    }
}
