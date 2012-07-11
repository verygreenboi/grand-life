<cfoutput>
	
		<div class="top-search">
			#startFormTag(action="s", class="searchForm")#
				#textFieldTag(name="search", placeholder="search")#
				#submitTag(value="Search")#
			#endFormTag()#
		</div>
		<div class="signin">
			<div>
				<p><a href="##">Sign In</a></p>
			</div>
			#startFormTag(action="signin", class="signinForm")#
				#textField(label="Email", objectName="user", property="email", placeholder="Enter Email", Autofocus="", required="")#
				#passwordField(label="Password", objectName="user", property="password", placeholder="Enter Password", required="")#
				#submitTag(value="Sign In")#
				<p>#linkTo(action="forgotPassword", text="Forgot your password?")#</p>
				<p>#linkTo(action="register", text="Register")#</p>
			#endFormTag()#
		</div>
		
</cfoutput>