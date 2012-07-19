<cfcomponent extends="Controller" output="false">
	
	<cffunction name="dash">
		<cfset pageTitle = "Social Trading">
		<cfset user = model("user").findOne(where="id='#session.user.id#'")>
	</cffunction>

	<cffunction name="uploadavatar">
		<!--- <cfdump var="#params#" abort="true"> --->
		<cfset validFormats = "image/*">
		<cfif isDefined('uploadurlimage') AND uploadurlimage NEQ ''>
			<cfset ifolder8 = "profile">
			<cfset nifolder8 = ExpandPath("images/#ifolder8#")>
			<cfset TAB = Chr(9)>
				<cfif NOT DirectoryExists(nifolder8)>
					<cfdirectory action="create" directory="#nifolder8#" mode="777">
				</cfif>
			<cfset Path = nifolder8>
		</cfif>
		<cffile action="upload" filefield="uploadurlimage" accept="#validFormats#" destination="#Path#\" nameconflict="overwrite">
		<cfset sFile = cffile.serverFile>
		<cfset sFileExt = cffile.serverFileExt>
		<cffile action="rename" source="#Path#/#sFile#" destination="#path#/#session.user.id#.#sFileExt#">
		<cfset params.user.photourl = "#session.user.id#.#sFileExt#">
		<cfset user = model("user").findByKey(session.user.id)>
		<cfset user.update(params.user)>

		<cfset redirectTo(action="dash")>
	</cffunction>
</cfcomponent>