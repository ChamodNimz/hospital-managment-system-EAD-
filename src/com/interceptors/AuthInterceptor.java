package com.interceptors;

import java.util.Map;

import com.actions.Admin;
import com.opensymphony.xwork2.ActionInvocation;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.interceptor.Interceptor;

public class AuthInterceptor implements Interceptor {


	private static final long serialVersionUID = -7308047155352917975L;

	@Override
	public void destroy() {
		
		
	}

	@Override
	public void init() {
		
		
	}

	@Override
	public String intercept(ActionInvocation actionInvocation) throws Exception {
		
		Map<String,Object> session = actionInvocation.getInvocationContext().getSession();
		Admin admin = (Admin)session.get("user");
		System.out.println(admin.getUsername());
		System.out.println(admin.getPassword());
		if(admin!=null) {
			return actionInvocation.invoke();
		}
		else {
			return ActionSupport.LOGIN;
		}
		
	}

}
