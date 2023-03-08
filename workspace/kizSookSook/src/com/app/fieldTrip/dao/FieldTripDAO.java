package com.app.fieldTrip.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;

import com.app.fieldTrip.domain.FieldTripBestCategoryDTO;
import com.app.fieldTrip.domain.FieldTripDTO;
import com.app.fieldTrip.domain.FieldTripDetailVO;
import com.app.fieldTrip.domain.FieldTripReviewDTO;
import com.app.fieldTrip.domain.ReviewVO;
import com.app.mybatis.config.MyBatisConfig;

public class FieldTripDAO {
	public SqlSession sqlSession;
	
	public FieldTripDAO() {
		sqlSession = MyBatisConfig.getSqlSessionFactory().openSession(true);
	}

	public List<FieldTripDTO> selectCategoryAll(Map<String, Object> pageMap) {
		return sqlSession.selectList("fieldTrip.selectCategoryAll", pageMap);
	}
	
	public List<FieldTripDTO> searchEngineSelectAll(Map<String, Object> pageMap) {
		return sqlSession.selectList("fieldTrip.searchEngineSelectAll", pageMap);
	}

	public Long getTotal(Long categoryId) {
		return sqlSession.selectOne("fieldTrip.getTotal", categoryId);
	}
	
	public Long getTotalKeyword(String keyword) {
		return sqlSession.selectOne("fieldTrip.getTotalKeyword", keyword);
	}
	
	public FieldTripDetailVO fieldTripDetail(Long fieldTripId) {
		return sqlSession.selectOne("fieldTrip.fieldTripDetail", fieldTripId);
	}
	
	public FieldTripDTO getfieldTripDTO(Long fieldTripId) {
		return sqlSession.selectOne("fieldTrip.getfieldTripDTO", fieldTripId);
	}
	
	public void delete(Long fieldTripId) {
		sqlSession.delete("fieldTrip.delete", fieldTripId);
	}
	
	public List<FieldTripDTO> selectTop10() {
		return sqlSession.selectList("fieldTrip.selectTop10");
	}
	
	public void insertLike(Map<String, Long> likeMap) {
		sqlSession.insert("fieldTrip.insertLike", likeMap);
	}

	public void deleteLike(Map<String, Long> likeMap) {
		sqlSession.delete("fieldTrip.deleteLike", likeMap);
	}

	public List<FieldTripBestCategoryDTO> selectBestCategoryList() {
		return sqlSession.selectList("fieldTrip.selectBestCategory");
	}
	
	public Long countReview(Long fieldTripId) {
		return sqlSession.selectOne("fieldTrip.countReview", fieldTripId);
	}
	
	public List<FieldTripReviewDTO> fieldTripReview(Map<String, Object> pageMap) {
		return sqlSession.selectList("fieldTrip.fieldTripReview", pageMap);
	}

	public boolean isNextPage(Map<String, Object> pageMap) {
		return sqlSession.selectList("fieldTrip.isNextPage", pageMap).size() != 0;
	}
}
