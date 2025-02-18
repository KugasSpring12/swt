<%-- 
    Document   : editproductadmin
    Created on : 18 thg 2, 2025, 03:55:10
    Author     : BT
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <% 
         List<Product> list=
                (List<Product>)request.getAttribute("product");
         Product p=List.get(0);
         
    %>
    <body>
        <form action="editProductAdmin" method="post">
            <div class="modal-header">						
                <h4 class="modal-title">Edit Product</h4>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">					
                <div class="form-group">
                    <input type="hidden" name="product_id" id="product_idInput2"/>
                    <label>Name</label>
                    <input name="name" type="text" class="form-control" id="nameInput2" required value="${Product.name}">
                </div>
                <div class="form-group">
                    <label>Category:</label>
                    <select name="category_id" id="category_idInput2">
                        <c:forEach items="${listCategory}" var="Category">
                            <option value="${Category.categoryId}">${Category.name}</option>
                        </c:forEach>
                    </select>
                </div>
                <div class="form-group">
                    <label>Supplier:</label>
                    <select name="supplier_id" id="supplier_idInput2">
                        <c:forEach items="${listSupplier}" var="Supplier">
                            <option value="${Supplier.supplierId}">${Supplier.name}</option>
                        </c:forEach>
                    </select>
                </div>
                <div class="form-group">
                    <label>Unit:</label>
                    <select name="unit_id" id="unit_idInput2">
                        <c:forEach items="${listUnit}" var="Unit">
                            <option value="${Unit.unitId}">${Unit.name}</option>
                        </c:forEach>
                    </select>
                </div>
                <div class="form-group">
                    <label>Images</label>
                    <div id="imageFields">
                        <div class="image-input mb-2">
                            <input type="text" name="imageUrl" class="form-control mb-1" placeholder="Image URL" required>
                            <input type="text" name="altText" class="form-control mb-1" placeholder="Alt Text" required>
                            <button type="button" class="btn btn-danger btn-sm remove-image">Remove</button>
                        </div>
                    </div>
                    <button type="button" class="btn btn-primary btn-sm" id="addImage">Add Image</button>
                </div>
                <div class="form-group">
                    <label>Weight</label>
                    <input name="weight" type="number" class="form-control" id="weightInput2" placeholder="g"  required>
                </div>
                <div class="form-group">
                    <label>Price</label>
                    <input name="price" type="number" class="form-control" id="priceInput2" placeholder="VND"    required>
                </div>
                <div class="form-group">
                    <label>Discount</label>
                    <input name="discount" type="number" class="form-control" id="discountInput2" placeholder="%"   required>
                </div>
                <div class="form-group">
                    <label>Quantity</label>
                    <input name="quantity" type="number" class="form-control" id="quantity2"   required>
                </div>
                <div class="form-group">
                    <label>Description</label>
                    <textarea name="description" type="text" class="form-control" id="description2"   required></textarea>
                </div>   
            </div>
            <div class="modal-footer">
                <input type="reset" class="btn btn-default" data-bs-dismiss="modal" value="Cancel">
                <input type="submit" class="btn btn-success" value="Edit">
            </div>
        </form>
    </body>
</html>
