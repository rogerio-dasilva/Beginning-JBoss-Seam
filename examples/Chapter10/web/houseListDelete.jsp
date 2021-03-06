
<%@ taglib uri="http://java.sun.com/jsf/html" prefix="h" %> 
<%@ taglib uri="http://java.sun.com/jsf/core" prefix="f" %>
<%@ taglib uri="http://jboss.com/products/seam/taglib" prefix="s" %>

<f:view>
	
	<h:dataTable var="house" value="#{houseList}" rendered="#{houseList.rowCount>0}"> 
		
		<h:column> 
			<f:facet name="header"> 
				<h:outputText value="Address"/> 
			</f:facet> 
			<h:outputText value="#{house.address}"/> 
		</h:column> 
		<h:column>
			<f:facet name="header"> 
				<h:outputText value="Action"/> 
			</f:facet> 
           <s:link value="Delete" action="#{houseManagerEdit.update}" linkStyle="button"/>
        </h:column>
	</h:dataTable> 

</f:view>