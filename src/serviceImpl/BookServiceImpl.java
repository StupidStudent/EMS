package serviceImpl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import dao.IBaseDao;

import entity.Book;
import service.BookService;

@Service
@Transactional
public class BookServiceImpl implements BookService
{
	@Resource
	private IBaseDao<Book, Integer> baseDao;
	
	@Override
	public boolean save(Book book)
	{
		baseDao.saveOrUpdate(book);
		return true;
	}

	@Override
	public List<Book> getAll()
	{
		return baseDao.getAll(Book.class);
	}
}
