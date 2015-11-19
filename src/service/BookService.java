package service;

import java.util.List;

import entity.Book;

public interface BookService
{
	public boolean save(Book book);
	public List<Book> getAll();
}
