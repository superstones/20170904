package Servlet;

import Bean.Book;
import Dao.BookDao;

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
@WebServlet(name = "AddBook", urlPatterns = "/AddBook")
public class AddBook extends HttpServlet {

//    private List<Book> list = null;
    private BookDao bookDao=new BookDao();


    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Book book = new Book();
        book.setBookName(request.getParameter("BookName"));
        book.setBookAuthor(request.getParameter("BookAuthor"));
        book.setBookPrice(Float.valueOf(request.getParameter("BookPrice")));
        bookDao.AddBook(book);

//        list.add(book);
//        request.setAttribute("list", list);
        request.setAttribute("bookList",bookDao.getBooks());

        request.getRequestDispatcher("ShowBook.jsp").forward(request, response);

    }

    /**
     * 第一次访问
     *
     * @throws ServletException
//     */
//    @Override
//    public void init() throws ServletException {
//        super.init();
//        list = new ArrayList<>();
//    }
}
