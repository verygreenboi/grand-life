<cfoutput>
	
		<!--- <div class="top-search">
			
		</div> --->
		<div class="modal-header">
		    <button type="button" class="close" data-dismiss="modal">×</button>
		    <h3>Modal header</h3>
	  	</div>
		<div class="modal-body">
			#startFormTag(action="signin", class="signinForm")#
				#textField(label="Email", objectName="user", property="email", placeholder="Enter Email", Autofocus="", required="")#
				#passwordField(label="Password", objectName="user", property="password", placeholder="Enter Password", required="")#
				#submitTag(value="Sign In")#
				<p>#linkTo(action="forgotPassword", text="Forgot your password?")#</p>
				<p>#linkTo(action="register", text="Register")#</p>
			#endFormTag()#
		</div>
		
		<div class="modal-footer">
	    	<a href="##" class="btn" data-dismiss="modal">Close</a>
	    	<a href="##" class="btn btn-primary">Sign in</a>
	  	</div>
		
</cfoutput>