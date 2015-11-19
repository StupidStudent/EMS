package serviceImpl;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import service.AccountService;
import dao.IBaseDao;
import entity.User;

@Service
public class AccountServiceImpl implements AccountService
{
	@Resource
	private IBaseDao<User, Integer> baseDao;
	
	@Override
	public User getUser(Integer accountId)
	{
		User account = baseDao.get(User.class, accountId);
		return account;
	}

}
