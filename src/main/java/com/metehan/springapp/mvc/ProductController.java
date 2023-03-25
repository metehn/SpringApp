package com.metehan.springapp.mvc;

import com.metehan.springapp.entity.Product;
import com.metehan.springapp.repository.ProductRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.ObjectError;
import org.springframework.web.bind.annotation.*;

import java.util.Optional;

@Controller
public class ProductController {

    @Autowired
    ProductRepository productRepository;

    @GetMapping( path= {"/product/edit" ,"/product/edit/{id}"}  )
    public String editProduct(Model model, @PathVariable(name="id", required = false) Long productId) {

        Product product;

     if(productId == null){

         product = new Product(0, "", 0.0);
     }else{

         Optional<Product> optional = productRepository.findById(productId);
         if (optional.isPresent()) {

             product = optional.get();
         } else {
             product = new Product(0, "", 0.0);
         }
     }


        model.addAttribute("product", product);

        return "/inventory/ProductEdit";
    }

    @PostMapping(path={"/product/edit","/product/edit/{id}"})
    public String insertProduct(Model model, Product product, BindingResult result) {

        model.addAttribute("product", product);

        if (result.hasErrors()) {
            result.addError(new ObjectError("product", "Biçimde bir hata var!"));

            return "/inventory/ProductEdit";
        }

        productRepository.save(product);
        model.addAttribute("message", "Successfully saved");

        return "/inventory/ProductSuccess";
    }

    @GetMapping("/product/list")
    public String getProduct(Model model) {

        Iterable<Product> products = productRepository.findAll();
        model.addAttribute("products", products);

        return "/inventory/ProductList";
    }

    @GetMapping("/product/delete/{id}")
    public String deleteProduct(Model model, @PathVariable("id") long productId) {

        productRepository.deleteById(productId);
        model.addAttribute("message", "Deleted successfully");

        return "/inventory/Message";
    }


    @GetMapping("/product/list2")
    public String getProduct2(Model model) {

        Iterable<Product> products = productRepository.findAll();
        model.addAttribute("products", products);

        return "Deneme";
    }

}
