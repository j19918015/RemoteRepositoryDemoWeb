package view;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class DemoServlet extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {

		String name=req.getParameter("name");
		System.out.println("name="+name);
		String[] hobby = req.getParameterValues("hobby");
//		String size=req.getParameter("size");
		resp.setContentType("text/html; charset=UTF-8");
		PrintWriter out = resp.getWriter();
		
		String method = req.getMethod();
		out.println("<h3>method:"+method+"</h3>");
		
		String uri = req.getRequestURI();
		out.println("<h3>uri:"+uri+"</h3>");
		
		out.println("<h3>hobby:"+hobby+"</h3>");
		if(hobby!=null && hobby.length!=0) {
			for(int i=0;i<hobby.length; i++){
				out.println("<h3>hobby:"+hobby[i]+"</h3>");
			}
		}
		
		
		
		
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		this.doGet(req,resp);

	}

}
