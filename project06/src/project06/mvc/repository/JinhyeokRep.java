package project06.mvc.repository;

import java.util.ArrayList;
import java.util.HashMap;

import org.springframework.stereotype.Repository;

import project06.mvc.vo.Board;
import project06.mvc.vo.JsonBoard;
import project06.mvc.vo.Project;
import project06.mvc.vo.Reply;





@Repository
public interface JinhyeokRep {
	public ArrayList<Project> prolist(String empno);
	public ArrayList<Project> prolist();
	public ArrayList<Project> prolistall();
	public ArrayList<Project> prolist_ing(Board sch);
	public int totCnt(Board sch);
	public ArrayList<Board> list(Board sch);
	public int totreCnt(Reply sch);
	public ArrayList<Board> replylist(Board sch);
	public ArrayList<Reply> replylist(Reply sch);
	
	public ArrayList<Board> list();
	public Board getBoard(int pjboardno);
	public void uptViews(int pjboardno);
	public void insert(Board ins);
	public void delete(int pjboardno);
	public ArrayList<JsonBoard> jsonblist(int projectno); 
	public ArrayList<Reply> replyjson(int no); 
	
	
	
	public void uptpjboard(Board upt);
	public ArrayList<Board> replylist(int pjboardno);
	public void insreply(Reply r);
	public void delpjreply(int pjreplyno);
	public void uptreply(Reply r);
	
	// 파일 정보 등록..
	public void insertRepo(String fname);
	public void deleteFile(int no);
	// 파일 다운로드 정보 
	public ArrayList<String> fnames(int no);
	public void uptFileInfo(HashMap hm);
	public void insFileInfo(HashMap hm);
	
	
	
}
