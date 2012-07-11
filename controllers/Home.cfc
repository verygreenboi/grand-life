<cfcomponent extends="Controller" output="false">
	
	<cffunction name="index">
		
		<cfset user = model("user").new()>
		
		<cfset pageTitle = "Social Trading">
				
	</cffunction>
	
	<!--- Signin Function--->
	
	<cffunction name="Signin">
		<cfset pageTitle = "Login">
		<cfset params.user.password = lcase(hash(trim(params.user.password), "SHA"))>
		<cfset user = model("user").findOne(where="email='#params.user.email#' AND password='#params.user.password#'")>
		<cfif isObject(user)>
			<cfset session.user.id = user.id>
			<cfset session.user.role = user.role>
			<cfset redirectTo(controller="secured", action="dash")>
		<cfelse>
			<cfset user = model("user").new(username=params.user.email)>
			<cfset flashInsert(error="Login credentials invalid.")>
			<cfset renderPage(action="login")>
		</cfif>
	</cffunction>
	
	<cffunction name="Register">
	</cffunction>
	
	

</cfcomponent>