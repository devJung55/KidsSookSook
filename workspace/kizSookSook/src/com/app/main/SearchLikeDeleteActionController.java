package com.app.main;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.app.Action;
import com.app.Result;
import com.app.fieldTrip.dao.FieldTripDAO;

public class SearchLikeDeleteActionController implements Action {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		FieldTripDAO fieldTripDAO = new FieldTripDAO();
		HttpSession session = req.getSession();
		Map<String, Long> likeMap = new HashMap<String, Long>();

		Long fieldTripId = Long.valueOf(req.getParameter("fieldTripId"));
		Long userId = (Long) session.getAttribute("userId");

		likeMap.put("fieldTripId", fieldTripId);
		likeMap.put("userId", userId);

		fieldTripDAO.deleteLike(likeMap);

		return null;
	}

}
