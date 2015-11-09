package serviceImpl;

import javax.annotation.Resource;
import org.springframework.stereotype.Service;
import dao.IBaseDao;
import entity.Account;
import service.AccountService;

@Service
public class AccountServiceImpl implements AccountService
{
	@Resource
	private IBaseDao<Account, Integer> baseDao;
	
	@Override
	public Account getUser(Integer accountId)
	{
		Account account = baseDao.get(Account.class, accountId);
		return account;
	}

}
