<cfcomponent extends="Model" output="false">
	<cffunction name="init">
		
		<!--- associations --->
		
		<cfset hasMany("products")>
		
		<!--- Validation --->
		
		<cfset validatesPresenceOf("firstname,lastname,email,password,sex")>
		<cfset validatesUniquenessOf("email")>
		<cfset validatesFormatOf(property="email", type="email")>
		<cfset validatesLengthOf(property="firstname", maximum=45, minimum=2)>
		<cfset validatesLengthOf(property="lastname", maximum=45, minimum=2)>
		<cfset validatesLengthOf(property="email", maximum=127)>
		<cfset validatesLengthOf(property="password", maximum=255, minimum=6)>
		<cfset validatesConfirmationOf(property="password", message="Your password does not match the confirmation.")>
		
	</cffunction>
</cfcomponent>