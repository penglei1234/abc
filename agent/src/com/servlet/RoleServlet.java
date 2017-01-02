package com.servlet;

import java.io.IOException;
import java.util.Date;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.entity.Role;
import com.service.RoleService;
import com.service.impl.RoleServiceImpl;
import com.tool.Page;

public class RoleServlet extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doPost(req, resp);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		String method = req.getParameter("method");
		RoleService roleService = new RoleServiceImpl();
		if ("insert".equals(method)) {
			insertRole(req, resp, roleService);
		} else if ("selectAllRole".equals(method)) {
			selectAllRoleName(req, resp, roleService);
		} else if ("selectRoleById".equals(method)) {
			selectRoleById(req, resp, roleService);
		} else if ("update".equals(method)) {
			update(req, resp, roleService);
		} else if ("save".equals(method)) {
			save(req, resp, roleService);
		} else if ("selectAllRoleInfo".equals(method)) {
			selectAllRole(req, resp, roleService);
		} else if ("deleteRole".equals(method)) {
			delete(req, resp, roleService);
		}
	}

	private void delete(HttpServletRequest req, HttpServletResponse resp,
			RoleService roleService) throws ServletException, IOException {
		String role_id = req.getParameter("id");
		String role_isdel = req.getParameter("isdel");

		Role role = new Role();
		role.setRoleId(Integer.parseInt(role_id));
		role.setRoleIsDel(Integer.parseInt(role_isdel));
		roleService.delectRole(role);
		selectAllRole(req, resp, roleService);

	}

	private void selectAllRole(HttpServletRequest req,
			HttpServletResponse resp, RoleService roleService)
			throws ServletException, IOException {
		// 获取模糊查询的条件
		String roleName = req.getParameter("roleName");
		String roleState = req.getParameter("roleState");
		req.setAttribute("rolename", roleName);
		req.setAttribute("roleState", roleState);
		// 获取分页信息
		String pageNum = req.getParameter("pageNow");
		int pageIndex = pageNum == null || "".equals(pageNum) ? 1 : Integer
				.parseInt(pageNum);
		// 创建page对象,封装分页信息
		Page page = new Page(pageIndex, 2, roleService.selectAllRows(roleName,
				roleState));
		req.setAttribute("page", page);
		// 执行分页查询
		List<Role> roleList = roleService.selectAllRole(page, roleName,
				roleState);
		req.setAttribute("roleList", roleList);
		req.getRequestDispatcher("pages/org/role/role-list.jsp").forward(req,
				resp);

	}

	private void save(HttpServletRequest req, HttpServletResponse resp,
			RoleService roleService) throws ServletException, IOException {
		String role_id = req.getParameter("id");
		String role_name = req.getParameter("role_name");
		String role_state = req.getParameter("role_state");
		String role_remark = req.getParameter("role_remark");
		Role role = new Role();
		role.setRoleId(Integer.parseInt(role_id));
		role.setRoleName(role_name);
		role.setRoleState(Integer.valueOf(role_state));
		role.setRoleRemark(role_remark);
		role.setRoleTime(new Date());
		roleService.update(role);
		selectAllRole(req, resp, roleService);
	}

	private void update(HttpServletRequest req, HttpServletResponse resp,
			RoleService roleService) throws ServletException, IOException {
		String id = req.getParameter("roleId");
		Role role = roleService.selectRoleById(Integer.valueOf(id));
		req.setAttribute("role", role);
		req.getRequestDispatcher("pages/org/role/role-edit.jsp").forward(req,
				resp);
	}

	private void selectRoleById(HttpServletRequest req,
			HttpServletResponse resp, RoleService roleService)
			throws ServletException, IOException {
		String id = req.getParameter("roleId");
		Role role = roleService.selectRoleById(Integer.valueOf(id));
		req.setAttribute("role", role);
		req.getRequestDispatcher("pages/org/role/role-info.jsp").forward(req,
				resp);
	}

	private void insertRole(HttpServletRequest req, HttpServletResponse resp,
			RoleService roleService) throws ServletException, IOException {
		String roleName = req.getParameter("roleName");
		String roleState = req.getParameter("roleState");
		String roleRemark = req.getParameter("roleRemark");
		// 创建Role对象,封装信息!
		Role role = new Role();
		role.setRoleName(roleName);
		role.setRoleState(Integer.parseInt(roleState));
		role.setRoleRemark(roleRemark);
		int result = roleService.insertRole(role);
		if (result < 0) {
			req.getRequestDispatcher("").forward(req, resp);

		} else {

			req.getRequestDispatcher("").forward(req, resp);
		}
	}

	private void selectAllRoleName(HttpServletRequest req,
			HttpServletResponse resp, RoleService roleService)
			throws ServletException, IOException {
		List<Role> roleList = roleService.selectAllRoleName();
		req.setAttribute("role", roleList);
		req.getRequestDispatcher("pages/org/user/user-add.jsp").forward(req,
				resp);
	}

}
