package com.EWaiter.service.mer;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.EWaiter.dao.mer.RoomDAO;
import com.EWaiter.model.mer.MerModel;
import com.EWaiter.model.mer.RoomModel;

@Service("roomService")
@Transactional(value="transactionManager")
public class RoomService 
{
	@Autowired
	@Qualifier("roomDAO")
	private RoomDAO roomDAO;
	
	public List<RoomModel> getrRoomModelsByMerID(long id)
	{
		MerModel merModel = new MerModel();
		merModel.setId(id);
		return roomDAO.getRoomModelsByMer(merModel);
	}
	
	
	
}
