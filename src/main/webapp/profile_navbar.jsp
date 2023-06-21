
<%@page import="com.tech.blog.entities.User"%>

<%
User user2 = (User) session.getAttribute("currentUser");
if (user2 == null) {
	response.sendRedirect("login_page.jsp");
}
%>

<nav class="navbar navbar-expand-lg navbar-dark primary-background">
	<a class="navbar-brand" href="index.jsp"> <span
		class="fa fa-asterisk"></span> Tech Blog
	</a>
	<button class="navbar-toggler" type="button" data-toggle="collapse"
		data-target="#navbarSupportedContent"
		aria-controls="navbarSupportedContent" aria-expanded="false"
		aria-label="Toggle navigation">
		<span class="navbar-toggler-icon"></span>
	</button>

	<div class="collapse navbar-collapse" id="navbarSupportedContent">
		<ul class="navbar-nav mr-auto">
			<li class="nav-item active"><a class="nav-link" href="#"> <span
					class="	fa fa-bell-o"></span> Notifications <span class="sr-only">(current)</span></a>
			</li>

			<li class="nav-item dropdown"><a
				class="nav-link dropdown-toggle" href="#" id="navbarDropdown"
				role="button" data-toggle="dropdown" aria-haspopup="true"
				aria-expanded="false"> <span class="	fa fa-check-square-o"></span>
					Categories
			</a>
				<div class="dropdown-menu" aria-labelledby="navbarDropdown">
					<a class="dropdown-item" href="#">Programming Language</a> <a
						class="dropdown-item" href="#">Project Implementation</a>
					<div class="dropdown-divider"></div>
					<a class="dropdown-item" href="#">Data Structure</a>
				</div></li>


			<li class="nav-item"><a class="nav-link" href="#"
				data-toggle="modal" data-target="#add-post-modal"> <span
					class="	fa fa-asterisk"></span> Do Post
			</a></li>



		</ul>

		<ul class="navbar-nav mr-right">
			<li class="nav-item"><a class="nav-link" href="#!"
				data-toggle="modal" data-target="#profile-modal"> <span
					class="fa fa-user-circle "></span> <%=user2.getName()%>
			</a></li>

			<li class="nav-item"><a class="nav-link" href="LogoutServlet">
					<span class="fa fa-user-plus "></span> Logout
			</a></li>
		</ul>
	</div>
</nav>
