<cfcomponent extends="Model" output="false">
	
	<cffunction name="init">
		
		<cfset belongsTo("user")>
		<cfset belongsTo("category")>
		<cfset hasMany("transactions")>
		
	</cffunction>

</cfcomponent>