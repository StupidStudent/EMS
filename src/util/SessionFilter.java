package util;

import java.io.IOException;  
import java.io.PrintWriter;  
  
import javax.servlet.FilterChain;  
import javax.servlet.ServletException;  
import javax.servlet.http.HttpServletRequest;  
import javax.servlet.http.HttpServletResponse;  
  
import org.springframework.web.filter.OncePerRequestFilter;  
  
/** 
 * 登录过滤 
 *  
 * @author zhong
 */  

public class SessionFilter extends OncePerRequestFilter {  
  
   
    @Override  
    protected void doFilterInternal(HttpServletRequest request,  
            HttpServletResponse response, FilterChain filterChain)  
            throws ServletException, IOException {  
  
        // 不过滤的uri  
        String[] notFilter = new String[] { "login","js","img","css","images","font-awesome" };  
  
        // 请求的uri  
        String uri = request.getRequestURI();  
  
            // 是否过滤  
            boolean doFilter = true;  
            for (String s : notFilter) {  
                if (uri.indexOf(s) != -1) {  
                    // 如果uri中包含不过滤的uri，则不进行过滤  
                    doFilter = false; 
                    if(uri.indexOf("jsp") != -1)
                    {
                    	doFilter = true;
                    }
                    break;  
                }  
            }  
            if (doFilter) {  
                // 执行过滤  
                // 从session中获取登录者实体  
                Object obj = request.getSession().getAttribute("username");  
                if (null == obj) {  
                	response.sendRedirect("login");
                } else {  
                    // 如果session中存在登录者实体，则继续  
                    filterChain.doFilter(request, response);  
                }  
            }
            else
            {
            	   filterChain.doFilter(request, response);  
            }
    }  
}  