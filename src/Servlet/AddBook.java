package Servlet;

import Bean.Book;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

/**
 * Created by Administrator on 2017/9/4.
 */
@WebServlet(name= "AddBook",urlPatterns = "/AddBook")
public class AddBook extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Book book=new Book();
        book.setBookName(request.getParameter("BookName"));
        book.setBookAuthor(request.getParameter("BookAuthor"));
        book.setBookPrice(Float.valueOf(request.getParameter("BookPrice")));
        List<Book> list= (List<Book>) request.getSession().getAttribute("list");
        if (list==null){
            list=new ArrayList<Book>();
        }
            list.add(book);
        request.getSession().setAttribute("list",list);
        request.getRequestDispatcher("ShowBook.jsp").forward(request,response);

    }
}
