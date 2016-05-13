package com.goshop.wechat.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@Controller
@RequestMapping("/test")
public class TestController {

    @RequestMapping(value =  "/css_1")
    public String css1(Model model,
                            HttpServletRequest request,
                            HttpServletResponse response) {
        return "test/css/1_bar";
    }

    @RequestMapping(value =  "/css_2")
    public String css2(Model model,
                            HttpServletRequest request,
                            HttpServletResponse response) {
        return "test/css/2_sub_header";
    }

    @RequestMapping(value =  "/css_3")
    public String css3(Model model,
                       HttpServletRequest request,
                       HttpServletResponse response) {
        return "test/css/3_button";
    }

    @RequestMapping(value =  "/css_4")
    public String css4(Model model,
                       HttpServletRequest request,
                       HttpServletResponse response) {
        return "test/css/4_colors";
    }

    @RequestMapping(value =  "/css_5")
    public String css5(Model model,
                       HttpServletRequest request,
                       HttpServletResponse response) {
        return "test/css/5_icon";
    }

    @RequestMapping(value =  "/css_6")
    public String css6(Model model,
                       HttpServletRequest request,
                       HttpServletResponse response) {
        return "test/css/6_padding";
    }

    @RequestMapping(value =  "/css_7")
    public String css7(Model model,
                       HttpServletRequest request,
                       HttpServletResponse response) {
        return "test/css/7_item";
    }

    @RequestMapping(value =  "/css_8")
    public String css8(Model model,
                       HttpServletRequest request,
                       HttpServletResponse response) {
        return "test/css/8_item_badge";
    }

    @RequestMapping(value =  "/css_9")
    public String css9(Model model,
                       HttpServletRequest request,
                       HttpServletResponse response) {
        return "test/css/9_item_list";
    }

    @RequestMapping(value =  "/css_10")
    public String css10(Model model,
                       HttpServletRequest request,
                       HttpServletResponse response) {
        return "test/css/10_item_button";
    }

    @RequestMapping(value =  "/css_11")
    public String css11(Model model,
                       HttpServletRequest request,
                       HttpServletResponse response) {
        return "test/css/11_item_image";
    }

    @RequestMapping(value =  "/css_12")
    public String css12(Model model,
                       HttpServletRequest request,
                       HttpServletResponse response) {
        return "test/css/12_item_image";
    }

    @RequestMapping(value =  "/css_13")
    public String css13(Model model,
                       HttpServletRequest request,
                       HttpServletResponse response) {
        return "test/css/13_item_image";
    }

    @RequestMapping(value =  "/css_14")
    public String css14(Model model,
                       HttpServletRequest request,
                       HttpServletResponse response) {
        return "test/css/14_item_image";
    }

    @RequestMapping(value =  "/css_15")
    public String css15(Model model,
                       HttpServletRequest request,
                       HttpServletResponse response) {
        return "test/css/15_item_icon";
    }

    @RequestMapping(value =  "/css_16")
    public String css16(Model model,
                       HttpServletRequest request,
                       HttpServletResponse response) {
        return "test/css/16_item_icon";
    }

    @RequestMapping(value =  "/css_17")
    public String css17(Model model,
                        HttpServletRequest request,
                        HttpServletResponse response) {
        return "test/css/17_button";
    }

    @RequestMapping(value =  "/css_18")
    public String css18(Model model,
                        HttpServletRequest request,
                        HttpServletResponse response) {
        return "test/css/18_button";
    }

    @RequestMapping(value =  "/css_19")
    public String css19(Model model,
                        HttpServletRequest request,
                        HttpServletResponse response) {
        return "test/css/19_button_item";
    }

    @RequestMapping(value =  "/css_21")
    public String css21(Model model,
                        HttpServletRequest request,
                        HttpServletResponse response) {
        return "test/css/21_input";
    }

    @RequestMapping(value =  "/css_22")
    public String css22(Model model,
                        HttpServletRequest request,
                        HttpServletResponse response) {
        return "test/css/22_input_login";
    }

    @RequestMapping(value =  "/css_23")
    public String css23(Model model,
                        HttpServletRequest request,
                        HttpServletResponse response) {
        return "test/css/23_input_login";
    }

    @RequestMapping(value =  "/css_24")
    public String css24(Model model,
                        HttpServletRequest request,
                        HttpServletResponse response) {
        return "test/css/24_input_register";
    }

    @RequestMapping(value =  "/css_25")
    public String css25(Model model,
                        HttpServletRequest request,
                        HttpServletResponse response) {
        return "test/css/25_input_on-off";
    }

    @RequestMapping(value =  "/css_26")
    public String css26(Model model,
                        HttpServletRequest request,
                        HttpServletResponse response) {
        return "test/css/26_input_on-off";
    }

    @RequestMapping(value =  "/css_27")
    public String css27(Model model,
                        HttpServletRequest request,
                        HttpServletResponse response) {
        return "test/css/27_input_list";
    }

    @RequestMapping(value =  "/css_28")
    public String css28(Model model,
                        HttpServletRequest request,
                        HttpServletResponse response) {
        return "test/css/28_input_button";
    }

    @RequestMapping(value =  "/css_29")
    public String css29(Model model,
                        HttpServletRequest request,
                        HttpServletResponse response) {
        return "test/css/29_input_select";
    }

    @RequestMapping(value =  "/css_30")
    public String css30(Model model,
                        HttpServletRequest request,
                        HttpServletResponse response) {
        return "test/css/30_tab_item";
    }

    @RequestMapping(value =  "/css_31")
    public String css31(Model model,
                        HttpServletRequest request,
                        HttpServletResponse response) {
        return "test/css/31_tab_item";
    }

    @RequestMapping(value =  "/css_32")
    public String css32(Model model,
                        HttpServletRequest request,
                        HttpServletResponse response) {
        return "test/css/32_tab_item";
    }

    @RequestMapping(value =  "/css_33")
    public String css33(Model model,
                        HttpServletRequest request,
                        HttpServletResponse response) {
        return "test/css/33_tab_item";
    }

    @RequestMapping(value =  "/css_34")
    public String css34(Model model,
                        HttpServletRequest request,
                        HttpServletResponse response) {
        return "test/css/34_tab_item";
    }

    @RequestMapping(value =  "/css_35")
    public String css35(Model model,
                        HttpServletRequest request,
                        HttpServletResponse response) {
        return "test/css/35_col";
    }

    @RequestMapping(value =  "/css_36")
    public String css36(Model model,
                        HttpServletRequest request,
                        HttpServletResponse response) {
        return "test/css/36_col_img";
    }

    @RequestMapping(value =  "/css_37")
    public String css37(Model model,
                        HttpServletRequest request,
                        HttpServletResponse response) {
        return "test/css/37_col";
    }

    @RequestMapping(value =  "/css_38")
    public String css38(Model model,
                        HttpServletRequest request,
                        HttpServletResponse response) {
        return "test/css/38_col";
    }

    @RequestMapping(value =  "/css_39")
    public String css39(Model model,
                        HttpServletRequest request,
                        HttpServletResponse response) {
        return "test/css/39_col";
    }

    @RequestMapping(value =  "/css_40")
    public String css40(Model model,
                        HttpServletRequest request,
                        HttpServletResponse response) {
        return "test/css/40_col";
    }

    @RequestMapping(value =  "/js_1")
    public String js1(Model model,
                        HttpServletRequest request,
                        HttpServletResponse response) {
        return "test/js/1_bar";
    }

    @RequestMapping(value =  "/js_2")
    public String js2(Model model,
                      HttpServletRequest request,
                      HttpServletResponse response) {
        return "test/js/2_bar";
    }

    @RequestMapping(value =  "/js_3")
    public String js3(Model model,
                      HttpServletRequest request,
                      HttpServletResponse response) {
        return "test/js/3_bar";
    }

    @RequestMapping(value =  "/js_4")
    public String js4(Model model,
                      HttpServletRequest request,
                      HttpServletResponse response) {
        return "test/js/4_bar";
    }

    @RequestMapping(value =  "/js_5")
    public String js5(Model model,
                      HttpServletRequest request,
                      HttpServletResponse response) {
        return "test/js/5_bar";
    }

    @RequestMapping(value =  "/js_6")
    public String js6(Model model,
                      HttpServletRequest request,
                      HttpServletResponse response) {
        return "test/js/6_bar";
    }

    @RequestMapping(value =  "/js_7")
    public String js7(Model model,
                      HttpServletRequest request,
                      HttpServletResponse response) {
        return "test/js/7_bar";
    }

    @RequestMapping(value =  "/js_8")
    public String js8(Model model,
                      HttpServletRequest request,
                      HttpServletResponse response) {
        return "test/js/8_bar";
    }

    @RequestMapping(value =  "/js_9")
    public String js9(Model model,
                      HttpServletRequest request,
                      HttpServletResponse response) {
        return "test/js/9_bar";
    }

    @RequestMapping(value =  "/js_01")
    public String js10(Model model,
                      HttpServletRequest request,
                      HttpServletResponse response) {
        return "test/js/10_bar";
    }

    @RequestMapping(value =  "/js_11")
    public String js11(Model model,
                      HttpServletRequest request,
                      HttpServletResponse response) {
        return "test/js/11_bar";
    }

    @RequestMapping(value =  "/js_12")
    public String js12(Model model,
                      HttpServletRequest request,
                      HttpServletResponse response) {
        return "test/js/12_bar";
    }

    @RequestMapping(value =  "/js_13")
    public String js13(Model model,
                      HttpServletRequest request,
                      HttpServletResponse response) {
        return "test/js/13_bar";
    }

    @RequestMapping(value =  "/js_14")
    public String js14(Model model,
                      HttpServletRequest request,
                      HttpServletResponse response) {
        return "test/js/14_bar";
    }

    @RequestMapping(value =  "/js_15")
    public String js15(Model model,
                      HttpServletRequest request,
                      HttpServletResponse response) {
        return "test/js/15_bar";
    }

    @RequestMapping(value =  "/js_16")
    public String js16(Model model,
                      HttpServletRequest request,
                      HttpServletResponse response) {
        return "test/js/16_bar";
    }

    @RequestMapping(value =  "/js_17")
    public String js17(Model model,
                      HttpServletRequest request,
                      HttpServletResponse response) {
        return "test/js/17_bar";
    }

    @RequestMapping(value =  "/js_18")
    public String js18(Model model,
                       HttpServletRequest request,
                       HttpServletResponse response) {
        return "test/js/18_bar";
    }

    @RequestMapping(value =  "/js_19")
    public String js19(Model model,
                       HttpServletRequest request,
                       HttpServletResponse response) {
        return "test/js/19_bar";
    }

    @RequestMapping(value =  "/js_20")
    public String js20(Model model,
                       HttpServletRequest request,
                       HttpServletResponse response) {
        return "test/js/20_bar";
    }
}
