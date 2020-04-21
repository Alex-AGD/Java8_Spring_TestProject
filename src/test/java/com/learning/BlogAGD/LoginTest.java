package com.learning.BlogAGD;

import com.learning.BlogAGD.controller.MainController;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.autoconfigure.web.servlet.AutoConfigureMockMvc;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.security.test.web.servlet.request.SecurityMockMvcRequestBuilders;
import org.springframework.test.context.ActiveProfiles;
import org.springframework.test.context.TestPropertySource;
import org.springframework.test.context.junit4.SpringRunner;
import org.springframework.test.web.servlet.MockMvc;

import static org.hamcrest.Matchers.containsString;
import static org.springframework.security.test.web.servlet.request.SecurityMockMvcRequestBuilders.formLogin;
import static org.springframework.test.web.servlet.request.MockMvcRequestBuilders.get;
import static org.springframework.test.web.servlet.request.MockMvcRequestBuilders.post;
import static org.springframework.test.web.servlet.result.MockMvcResultHandlers.print;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.*;
@TestPropertySource("/application-test.properties") //for test
/*@ActiveProfiles("dev") //для dev properties*/
@AutoConfigureMockMvc
@RunWith(SpringRunner.class)
@SpringBootTest
public class LoginTest {
    @Autowired
    private MockMvc mockMvc;

    @Autowired
    private MainController controller;

    @Test
    public void mainPage() throws Exception {
        this.mockMvc.perform(get("/"))
                .andDo(print()) //выводит резу-тат теста в консоль
                .andExpect(status().isOk())//сравнивает результат проверка с результаом который мы ожидаем
                .andExpect(content().string(containsString("Hello unknown Please login")))
                .andExpect(content().string(containsString("Programming is")));
    }

    @Test
    public void loginTest()throws Exception{
        this.mockMvc.perform(get("/main"))
                .andDo(print())
                .andExpect(status().is3xxRedirection())
                .andExpect(redirectedUrl("http://localhost/login"));

        }
    @Test
    public void correctLoginTest()throws Exception{
        this.mockMvc.perform(formLogin().user("admin").password("123"))
                .andDo(print())
                .andExpect(status().is3xxRedirection())
                .andExpect(redirectedUrl("/"));
    }

    @Test
    public void notCorrectLogin() throws Exception{
        this.mockMvc.perform(post("/login").param("anon","324"))
                .andDo(print())
                .andExpect(status().isForbidden());
    }

}
