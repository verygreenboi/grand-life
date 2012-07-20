<cfcomponent extends="Model" output="false">
	
	<cffunction name="init">
		
		<!--- Association --->
		
		<cfset hasMany("products")>
		
	</cffunction>

</cfcomponent>