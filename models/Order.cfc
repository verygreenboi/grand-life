<cfcomponent extends="Model" output="false">
	
	
	
	<cffunction name="init">
		
		<!--- Association --->
		<cfset hasMany("transactions")>
		
		
	</cffunction>

</cfcomponent>