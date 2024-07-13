<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<table class="table">
	<thead>
		<tr>
			<th>#</th>
			<th>Item</th>
			<th>Valor</th>
		</tr>
		<c:forEach var="dato" items="${datos}" varStatus="loop">
			<tr>
				<th><c:out value="${loop.index}"></c:out></th>
				<th><c:out value="${dato.key}"></c:out></th>
				<th><c:out value="${dato.value}"></c:out></th>
			</tr>
		</c:forEach>
	</thead>
</table>