<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>List of all tasks</title>
</head>
<body>
<table border="1" width="100%">
	<thead>
	    <tr>
	        <th>ID da Tarefa</th>
	        <th>Nome</th>
	        <th>Descrição</th>
	        <!-- <th>Status</th> -->
	        <th>Data da criação</th>
	        <th>Data da atualização</th>
	        <th>Data da Conclusão</th>
	        <th colspan="2">Ações</th>
	    </tr>
	</thead>
	<tbody>
	    <c:forEach items="${tasks}" var="task">
	        <tr>
	            <td><c:out value="${task.id}" /></td>
	            <td><c:out value="${task.name}" /></td>
	            <td><c:out value="${task.description}" /></td>
	           <!-- Aqui era pra fazer a chamada do status task, mas por algum motivo além de minha compreensão
	           		o simples fato de estar comentado aqui quebrava o codigo. -->
	            <td><c:out value="${task.dateCreated}" /></td>
	            <td><c:out value="${task.dateUpdated}" /></td>
	            <td><c:out value="${task.dateConclusion}" /></td>
	            <td><a href="TaskController.do?action=edit&id=<c:out value="${task.id}"/>">Editar</a></td>
	            <td><a href="TaskController?action=delete&id=<c:out value="${task.id}"/>">Remover</a></td>
	        </tr>
	    </c:forEach>
	</tbody>
</table>
<p>
    <a href="TaskController.do?action=create">Criar tarefa</a>
</p>
</body>
</html>