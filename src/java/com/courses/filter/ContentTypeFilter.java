package com.courses.filter;

import javax.servlet.*;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class ContentTypeFilter implements Filter {

    @Override
    public void init(FilterConfig filterConfig) throws ServletException {
        // Phương thức init() được gọi khi bộ lọc được khởi tạo
        // Thực hiện các công việc khởi tạo (nếu cần)
    }

    @Override
    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
            throws IOException, ServletException {
        HttpServletResponse httpResponse = (HttpServletResponse) response;

        // Thiết lập tiêu đề "X-Content-Type-Options" trong phản hồi
        httpResponse.setHeader("X-Content-Type-Options", "nosniff");

        chain.doFilter(request, response);
    }

    @Override
    public void destroy() {
        // Phương thức destroy() được gọi khi bộ lọc bị hủy
        // Thực hiện các công việc dọn dẹp (nếu cần)
    }
}

