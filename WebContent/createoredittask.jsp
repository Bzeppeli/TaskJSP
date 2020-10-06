<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Editor de tarefas</title>
</head>
<body>
	<form action='TaskController.do' method='post'>  
    	<table>
	    	<tr>
	    		<td></td>
	    		<td>
	    			<input type='hidden' name='id' value="${task.id}"/>
	    		</td>
	    	</tr>
	    	
			<tr>
				<td>Nome:</td>
				<td>
					<input type='text' name='name' value="${task.name}"/>
				</td>
			</tr>
			
			<tr>
				<td>Descrição:</td>
				<td>
					<input type='text' name='description' value="${task.description}"/>
				</td>
			</tr>
			
			<tr>
				<td> Data de Conclusão </td>
				<td> 
					<input id='date' type="date" <fmt:formatDate pattern="dd/MM/yyyy" value="${task.dataConclusion}" />  />
				</td>
			</tr>
			
			<tr>
				<td> Estatus da Tarefa </td>
	    		<td colspan='2'>
	    			<c:forEach var="Status" items="status">
		                 <select>
		                    <option value="Pendente"> Planjeada</option>
		                    <option value="Concluida"> Em Andamento</option>
		                    <option value="Concluida"> Concluida</option>
		                  </select>
           			</c:forEach><br />
	    		</td>
    		</tr>
    		
			<tr>
	    		<td></td>
	    		<td>
	    			<input type='hidden' name='dateCreated' value="${task.dateCreated}"/>
	    		</td>
	    	</tr>
	    	
	    	<tr>
	    		<td></td>
	    		<td>
	    			<input type='hidden' name='dateCreated' value="${task.dateCreated}"/>
	    		</td>
	    	</tr>
	    	
	    	
	    	<tr>
    			<td></td>
	    		<td>
	    			<input type='hidden' name='dateUpdated' value="${task.dateUpdated}"/>
    			</td>
	    	</tr>
	    	
	    	<tr>
	    		<td colspan='3'>
	    			<input type='submit' value='Save'/>
	    		</td>
    		</tr>
		</table>
    </form>
</body>
</html>