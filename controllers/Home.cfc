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
		<cfset user = model("user").new()>
		
		<cfset pageTitle = "Social Trading">
	</cffunction>
	
	<cffunction name="create">
		
		<!--- If no User struct in the params, redirect --->
		<cfif NOT structKeyExists(params, 'user')>
			<cfset redirectTo(action="register") />
		</cfif>
		<!--- Hash password --->
		<cfset params.user.password = lcase(hash(trim(params.user.password), "SHA"))>
		<cfset params.user.passwordConfirmation = lcase(hash(trim(params.user.passwordConfirmation), "SHA"))>
		
		<cfset user = model("user").new(params.user) />
		
		<!--- Save the user --->
			<cfif user.save()>
			<!--- Success Message --->
			    <cfset flashInsert(success="#user.firstname# was created successfully.") />
				
				<!--- Redirect --->
	            <cfset redirectTo(action="success", controller="home") />
				
	        <!--- Handle errors --->
	        <cfelse>
	        
	        <cfset pageTitle = "Social Trading">
	        	<!--- Clear the attempted password --->
				<cfset user.password ="" />
				<cfset user.passwordCofirmation ="" />
				
				<!--- Render View --->
	            <cfset renderPage(action="register") />
	        </cfif>
	</cffunction>
	<cffunction name="success">
		<cfset pageTitle = "Success">
		<cfif not flashKeyExists("success")>
			<cfset redirectTo(action="login")>
		</cfif>
	</cffunction>
	
	<cffunction name="login">
		<cfset pageTitle = "Login">
	</cffunction>
	
	<cffunction name="logout">
		<cfif structKeyExists(session, "user")>
			
		</cfif>
	</cffunction>	
	

</cfcomponent>