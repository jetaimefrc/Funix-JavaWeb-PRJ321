<%--
    Document   : LoginCourseForm
    Created on : Dec 26, 2018, 9:03:43 PM
    Author     : demonslight998
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:include page="fragment/header.jsp" />


<div class="container form-display">
  <form action="/LoginCourse" method="POST">
    <div class="form-group">
      <label>Username</label>
      <input type="text" class="form-control" name="name" placeholder="Enter username">
    </div>
    <div class="form-group">
      <label>Password</label>
      <input type="password" class="form-control" name="password" placeholder="Enter password">
    </div>
    <button type="submit" class="btn btn-primary">Submit</button>
  </form>
  <h4 style="color: red">${error}</h4>

</div>

<jsp:include page="fragment/footer.jsp" />