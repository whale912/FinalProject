package project06.util;

import java.io.File;
import java.io.FileInputStream;
import java.io.OutputStream;
import java.net.URLEncoder;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.servlet.view.AbstractView;

public class DownloadViewer extends AbstractView {

	// 현재 다운로드 할 파일의 위치(공통설정파일에 
	@Value("${upload}")
	private String upload;

	@Override
	protected void renderMergedOutputModel(
			Map<String, Object> model, 
			HttpServletRequest request, 
			HttpServletResponse response)
			throws Exception {
		// TODO Auto-generated method stub
		// 요청으로 온 file명은 model 이름을 downloadviewer한테 호출한다.
		// 모델명은 downloadFile, 실제 파일명을 할당처리
		// 1. controller에서 전달되어 온 파일 명으로 파일객체 할당
		String fname = (String)model.get("downloadFile");
		//	1) 파일을 객체로 생성 처리하여 전달 준비
		File file = new File(upload+fname);
		System.out.println("## viewer에 오신 것을 환영합니다 ##");
		System.out.println("전체 파일명 : "+file.getPath());
		System.out.println("파일 명 : "+file.getName());
		System.out.println("파일 길이 : "+(int)file.length());
		// 2. 다운로드 처리를 위한 response객체 설정
		// 		1) 파일 다운로드를 처리하기 위한 contentType설정
		response.setContentType("application/download; charset=UTF-8");
		//		2) 파일의 길이와 파일명 설정
		response.setContentLength((int)file.length());
		//			- 한글파일명을 위한 encoding처리
		fname = URLEncoder.encode(fname,"utf-8").replaceAll("\\+", " ");
		// 3. Header정보 설정
		// filename="파일명"
		response.setHeader("Content-Disposition", "attachment;filename=\""+fname+"\"");
		response.setHeader("Content-Transfer-Encoding", "binary");
		// 4. 파일을 InputStream으로 전환하여, response의 OutStream에 탑재하여 전송
		FileInputStream fis = new FileInputStream(file);
		OutputStream out = response.getOutputStream();
		// 		1) FileCopyUtils의 copy메서드를 통해서 전달
		FileCopyUtils.copy(fis, out);
		//		2) 전송 완료 처리
		out.flush();
		// springweb.z02_util.DownloadViewer
	}
	
	
}

/*
# 사용자 정의 downloadViewer처리

1. 상속 AbstractView
	1) overriding메서드 재정의
		- renderMergedOutputModel
		 	매개변수 Map<String, Object>Model,	HttpServletRequest request,	HttpServletResponse response
2. 다운로드 처리
	1) upload된 파일 가져오기
		- 현재 viewer를 호출 시, 사용되는 model 객체 가져오기
		- File객체 생성
	2) 모델과 함께 있는 File객체 가져오기
	3) 반응 객체(response)로 전달 처리(클라이언트에 파일전달)
		- 전체 파일 명
		- 파일 명
		- 파일의 길이
		- setContentType 설정 : application/download;charset-utf-8
		- setContentLength로 파일 길이 설정
		- 한글명으로 된 파일은 Encoding처리
		- 파일을 response에 탑재하기 위한 header부분 설정
			Content-Disposition으로 attachment로 파일 설정
			Content-Transfer-Encoding설정 binary설정
		- 파일을 network로 전송하기 위해 Stream객체로 변환
			InputStream(읽어오는 객체) ==> OutStream 보내는 객체
			FileInputStream(파일객체)
			FileCopyUtils.copy(inputstream, outstream)
			outstream을 통해 flush를 통해서 자원을 해제
 
*/
