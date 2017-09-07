package Dao;

import Bean.Book;
import Db.BookDB;

import java.util.List;

/**
 * Created by Administrator on 2017/9/6.
 */

// 调用DB层的方法
public class BookDao {
    //添加一本书
    public void AddBook(Book book){

        BookDB.bookList.add(book);


    }
    //得到所有书籍信息
    public List<Book> getBooks(){


        return BookDB.bookList;


    }

    //删除一本书
    //按照书名查找
    //统计书籍总价


}
