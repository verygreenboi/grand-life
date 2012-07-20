<cfcomponent extends="Model" output="false">
	
	<!--- Association --->
	
	<cfset hasOne("product")>
	<cfset belongsTo("order")>

</cfcomponent>