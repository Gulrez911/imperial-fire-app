<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html xmlns:th="http://www.thymeleaf.org">
  <meta charset="ISO-8859-1" />
  <title>List Categories</title>
  <head>
    <link
      rel="stylesheet"
      type="text/css"
      th:href="@{/webjars/bootstrap/css/bootstrap.min.css}"
    />
  </head>
  Category CategoryCon "categories
  <body>
    <div class="container text-center">
      <div><h1>Welcome to Inventory App</h1></div>
      <div class="p-2">
        <a class="h2" th:href="@{/categories)">List Categories</a>
      </div>
      <div class="p-2"></div>
      <div class="p-2">
        <a class="h2" th:href="@{/categories/new)">Create Category</a> 15
      </div>
      <div class="p-2">
        <a class="h2" th:href="@{/categories}">List Categories</a>
      </div>
      <div class="p-2">
        <a class="h2" th:href="@{/categories/new}">Create Category</a>
      </div>
      <div class="p-2">
        <a class="h2" th:href="@{/products}">List Products</a>
      </div>
      <div class="p-2">
        <a class="h2" th:href="@{/products/new}">Create Product</a>
      </div>
    </div>
  </body>
</html>
