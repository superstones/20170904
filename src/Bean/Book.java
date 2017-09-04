package Bean;

/**
 * Created by Administrator on 2017/9/4.
 */
public class Book {
    private String BookName;
    private String BookAuthor;
    private float BookPrice;


    public String getBookName() {
        return BookName;
    }

    public void setBookName(String bookName) {
        BookName = bookName;
    }

    public String getBookAuthor() {
        return BookAuthor;
    }

    public void setBookAuthor(String bookAuthor) {
        BookAuthor = bookAuthor;
    }

    public float getBookPrice() {
        return BookPrice;
    }

    public void setBookPrice(float bookPrice) {
        BookPrice = bookPrice;
    }
}
