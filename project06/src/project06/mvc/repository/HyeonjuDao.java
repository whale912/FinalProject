package project06.mvc.repository;

import java.util.ArrayList;

import org.springframework.stereotype.Repository;

import project06.mvc.vo.Emp;
import project06.mvc.vo.EmpList;


@Repository
public interface HyeonjuDao {
	// project06.mvc.repository.HyeonjuDao 
	// 검색할 내용의 전체 데이터 건수
	public int totCnt(EmpList list);
	
	
	// mlistMapper.xml과 연결
	// HyeonjuDao ==> namespace명
	// ArrayList<Emp> ==> ResultMap
	// memlist, memlist2 ==> id
	// Emp, EmpList ==> parameterType
	
	// public ArrayList<Emp> memlist(Emp list);

	public ArrayList<Emp> memlist2(EmpList list); // 검색과 페이징처리

	


	
	//마이페이지 업데이트
	public void myUpdate(Emp mem);
	//마이페이지 조회
	public Emp memInfo(String empno);


	// 사원 등록, 삭제, 수정
	public ArrayList<Emp> memNew(Emp name);

	public void regist(Emp name);
	
	public void updateRank(Emp upRank);
	
	public void updatePosition(Emp upPosi);
	
	public void delete(Emp del);
}
