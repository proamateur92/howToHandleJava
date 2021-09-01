package com.myspring.pro30.board.dao;

import java.util.List;
import java.util.Map;

import org.springframework.dao.DataAccessException;

import com.myspring.pro30.board.vo.ArticleVO;

public interface BoardDAO {

	public List<ArticleVO> selectAllArticlesList() throws DataAccessException;

	public int insertNewArticle(Map articleMap) throws DataAccessException;
	
	public List viewArticle(int articleNO) throws DataAccessException;

	public int modArticle(Map articleMap) throws DataAccessException;

	public int removeArticle(int articleNO) throws DataAccessException;

	public void insertNewImage(Map articleMap) throws DataAccessException;

	public ArticleVO selectArticle(int articleNO) throws DataAccessException;

	public List selectImageFileList(int articleNO) throws DataAccessException;

	

	

}
