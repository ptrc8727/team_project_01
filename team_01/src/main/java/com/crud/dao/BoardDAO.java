package com.crud.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

/*import javax.swing.tree.RowMapper;*/

import com.crud.bean.BoardVO;
import com.crud.common.JDBCUtil;

import org.springframework.jdbc.core.RowMapper;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.transaction.PlatformTransactionManager;
import org.springframework.transaction.TransactionStatus;
import org.springframework.transaction.support.DefaultTransactionDefinition;

public class BoardDAO {
	
	public Date date = new Date();
	private SimpleDateFormat dd=new SimpleDateFormat("yyyy-MM-dd");
	public String ddate = dd.format(date);
	
	private JdbcTemplate template;
	public void setTemplate(JdbcTemplate template) {
		
		this.template=template;
		
	}

	private final String BOOK_INSERT = "insert into BOOK (title, writer, summary, url, publish) values (?,?,?,?,?)";
	private final String BOOK_UPDATE = "update BOOK set title=?, writer=?, summary=?, url=?, publish=?, editdate=DATE_FORMAT('"+ddate+"','%Y-%m-%d') where seq=?";
	private final String BOOK_DELETE = "delete from BOOK  where seq=?";
	private final String BOOK_GET = "select * from BOOK  where seq=?";
	private final String BOOK_LIST = "select * from BOOK order by seq desc";

	public int insertBoard(BoardVO vo) {
		return template.update(BOOK_INSERT, new 
				Object[] {vo.getTitle(), vo.getWriter(), vo.getSummary(), vo.getUrl(), vo.getPublish()});
		
	}

	// 글 삭제
	public int deleteBoard(int id) {
		return template.update(BOOK_DELETE, new 
				Object[] {id});
		
	}
	public int updateBoard(BoardVO vo) {
		return template.update(BOOK_UPDATE, new 
				Object[] {vo.getTitle(), vo.getWriter(), vo.getSummary(),vo.getUrl(),vo.getPublish(), vo.getSeq()});
	}	
	
	public BoardVO getBoard(int seq) {
		return template.queryForObject(BOOK_GET,
				new Object[] {seq},
				new BeanPropertyRowMapper<BoardVO>(BoardVO.class)
		);
	}
	
	public List<BoardVO> getBoardList(){
		return template.query(BOOK_LIST, new RowMapper<BoardVO>(){
			
			@Override
			public BoardVO mapRow(ResultSet rs, int rowNum) throws SQLException{
				BoardVO data=new BoardVO();
				data.setSeq(rs.getInt("seq"));
				data.setTitle(rs.getString("title"));
				data.setRegdate(rs.getDate("regdate"));
				data.setEditdate(rs.getDate("editdate"));
				data.setSummary(rs.getString("summary"));
				data.setWriter(rs.getString("writer"));
				data.setUrl(rs.getString("url"));
				data.setPublish(rs.getInt("publish"));
				return data;
			}

			
			
		});
	}
}
