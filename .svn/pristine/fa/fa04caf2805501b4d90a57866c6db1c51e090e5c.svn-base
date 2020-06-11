package project06.mvc.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import project06.mvc.repository.HyeongjunDao;
import project06.mvc.vo.Emp;

@Service
public class EmpService {

	@Autowired(required=false)
	private HyeongjunDao dao;
	
	public Emp login(Emp mem) {
		
		return dao.login(mem);
	}
	
	public String findEmpno(Emp mem) {
		return dao.findEmpno(mem);
	}
	
	public Emp findPass(Emp mem) {
		return dao.findPass(mem);
	}
	
	public void updatePass(Emp mem) {
		dao.updatePass(mem);
	}
	
	public ArrayList<Emp> empList(){
		return dao.empList();
	}
	
}
