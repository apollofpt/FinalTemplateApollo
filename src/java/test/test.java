/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package test;


import dao.DAO;
import java.util.Date;
import java.sql.Timestamp;
import java.text.SimpleDateFormat;
import java.time.LocalDateTime;
import java.util.Scanner;


/**
 *
 * @author Minky
 */
public class test {
    public static void main(String[] args) throws Exception {
//        String text = "Hữu Tình hehe 123";
//        System.out.println(text.matches("[a-zA-Z\\sÀÁÂÃÈÉÊÌÍÒÓÔÕÙÚĂĐĨŨƠàáâãèéêìíòóôõùúăđĩũơƯĂẠẢẤẦẨẪẬẮẰẲẴẶẸẺẼỀỀỂưăạảấầẩẫậắằẳẵặẹẻẽềềểỄỆỈỊỌỎỐỒỔỖỘỚỜỞỠỢỤỦỨỪễệỉịọỏốồổỗộớờởỡợụủứừỬỮỰỲỴÝỶỸửữựỳỵỷỹ]{4,}"));
//        Timestamp sqlTime = new Timestamp(new Date().getTime());

//        System.out.println("sqlTime: " + sqlTime);
//        System.out.println(LocalDateTime.now().toString());
//        
        System.out.println(new SimpleDateFormat("SSS").format(new Date()));
//        DAO dao = new DAO();
//        int key = dao.insertPost("2", "test", new Timestamp(new Date().getTime()), "test", "test");
//        
//        System.out.println(dao.insertCategoryPost(key, new String[]{"1","2","3"}));
//        System.out.println(dao.insertProductImage(22, new String[]{"test/2","test/3"}));
    }
    
    
}
