package kr.spring.controller;

import java.util.ArrayList;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.spring.entity.Board;

@Controller // 현재클래스를 핸들러맵핑이 찾기위해 컨트롤러로 등록하는 부분
public class BoardController {
	
//	@RequestMapping("/") // 요청 url로 들어왔을때 아래 기능을 수행하겠다
//	public String home() {
//		System.out.println("홈 기능 수행");
//		return "boardList";
//	}
	
	@RequestMapping("/boardList.do") // 요청 url로 들어왔을때 아래 기능을 수행하겠다
	public String boardList(Model model) {
		System.out.println("게시판목록보기 기능수행");
		
		// 게시글 정보 가져오기
		// 한 개의 게시글은 - 번호, 제목, 내용, 작성자, 작성일, 조회수
		Board b1 = new Board(1, "오늘 점심 추천 받는다", "짜장면 말고...", "중국집매니아", "2023-09-05", 5);
		Board b2 = new Board(1, "어제 마지막 나간사람 누구임?", "정말 대단하네!", "준용쌤", "2023-09-04", 46);
		Board b3 = new Board(1, "치우야 거기 있는 물건좀 치우라", "ㅋㅋㅋ재밌징", "김태연", "2023-09-03", 12);
		Board b4 = new Board(1, "오늘 단축수업으로 인해 오늘 수업은 오전만 진행합니다", "힝 속았징", "명훈쌤", "2023-09-06", 99);
		Board b5 = new Board(1, "오늘까지해서 우리반 총 7point 획득!", "진짜 인당 5만원 가져가냐 이거?", "병관쌤", "2023-09-05", 7);

		ArrayList<Board> list = new ArrayList<Board>();
		list.add(b1);
		list.add(b2);
		list.add(b3);
		list.add(b4);
		list.add(b5);
		
		// 객체바인딩 - 동적바인딩
		model.addAttribute("list", list);
		
		
		return "boardList";   // /WEB-INF/views/boardList.jsp  -> forward방식
	}
	
	
}
