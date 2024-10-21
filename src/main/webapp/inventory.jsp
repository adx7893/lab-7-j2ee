<%@ taglib uri="https://jakarta.ee/jstl/core" prefix="c" %>
<%@ taglib uri="https://jakarta.ee/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="/WEB-INF/tlds/custom.tld" prefix="ct" %>

<html>
<head>
    <title>Inventory Page</title>
</head>
<body>
    <h2>Inventory List</h2>
    
    <!-- Display Current Date and Time -->
    <p><fmt:formatDate value="${pageContext.request.time}" pattern="MMMM dd, yyyy, hh:mm a" /></p>
    
    <!-- Display Product Inventory -->
    <table border="1">
        <thead>
            <tr>
                <th>Product ID</th>
                <th>Product Name</th>
                <th>Quantity</th>
                <th>Price</th>
            </tr>
        </thead>
        <tbody>
            <c:forEach var="product" items="${productList}">
                <tr>
                    <td>${product.id}</td>
                    <td>${product.name}</td>
                    <td>${product.quantity}</td>
                    <td>${product.price}</td>
                </tr>
            </c:forEach>
        </tbody>
    </table>

    <!-- Custom Copyright Tag -->
    <footer>
        <ct:copyright />
    </footer>
</body>
</html>
