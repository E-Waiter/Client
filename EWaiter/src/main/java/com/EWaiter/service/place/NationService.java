package com.EWaiter.service.place;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.EWaiter.dao.place.NationDAO;
import com.EWaiter.model.place.NationModel;

@Service("nationService")
@Transactional(value="transactionManager")
public class NationService
{
	@Autowired
	@Qualifier("nationDAO")
	private NationDAO nationDAO;
	public boolean addNation(NationModel nationModel)
	{
		long id = nationDAO.addNation(nationModel);
		if (id > 0) 
		{
			return true;
		}
		return false;
	}
	
	
	
}
