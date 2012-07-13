<cfoutput>
	<div class="span9 cat-inner">
	<cfif flashKeyExists("error")>
		<div class="alert alert-block alert-error">
			<h4 class="class="alert-heading"">Error</h4>
			<p>#flash("error")#</p>
		</div>
	</cfif>
		#startFormTag(action="Signin", class="well form-horizontal")#
			<fieldset>
				<div class="control-group">
		            <label class="control-label" for="email">Email</label>
		            <div class="controls">
			            <div class="input-prepend">
				            <span class="add-on">@</span>
		              		<input class="input-xlarge focused" id="user-email" name="user[email]" type="email">
						</div>
		            </div>
		        </div>
		        <div class="control-group">
		            <label class="control-label" for="password">Password</label>
		            <div class="controls">
		              	<div class="input-prepend">
			              	<span class="add-on">P</span>
			              	<input class="input-xlarge focused" id="user-password" type="password" name="user[password]">
						</div>
		            </div>
		        </div>
		        
		        <div class="control-group">
					<label class="control-label" for="input01"></label>
				      <div class="controls">
				       <button type="submit" class="btn btn-success" rel="tooltip" title="first tooltip">Sign In</button>
				       
				      </div>
				
				</div>
		        
			</fieldset> 
			<a href="##">Forgot Your password?</a>
			#linkTo(action="register", text="New User?", class="register")#
		#endFormTag()#
	</div>
</cfoutput>