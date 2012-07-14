<cfoutput>
	<div id="myModal" class="modal hide fade">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal">X</button>
        <h3>Sign In</h3>
      </div>
      <div class="modal-body">
      #startFormTag(action="Signin", class="well")#
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
		</fieldset> 
		<a href="##">Forgot Your password?</a>
		#linkTo(action="register", text="New User?", class="register")#
      </div>
      <div class="modal-footer">
        <a href="##" class="btn" data-dismiss="modal">Close</a>
        <button class="btn btn-primary" type="submit">Sign in</button>
      </div>
    </div>
	#endFormTag()#
</cfoutput>