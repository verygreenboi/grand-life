<cfoutput>
	<div id="myModal" class="modal hide fade">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal">X</button>
        <h3>Sign In</h3>
      </div>
      <div class="modal-body">
      <form class="well">
        <fieldset>
			<div class="control-group">
	            <label class="control-label" for="email">Email</label>
	            <div class="controls">
		            <div class="input-prepend">
			            <span class="add-on">@</span>
	              		<input class="input-xlarge focused" id="email" type="email">
					</div>
	            </div>
	        </div>
	        <div class="control-group">
	            <label class="control-label" for="password">Password</label>
	            <div class="controls">
	              	<div class="input-prepend">
		              	<span class="add-on">P</span>
		              	<input class="input-xlarge focused" id="password" type="password">
					</div>
	            </div>
	        </div>
		</fieldset> 
      </div>
      <div class="modal-footer">
        <a href="##" class="btn" data-dismiss="modal">Close</a>
        <button class="btn btn-primary" type="submit">Sign in</button>
      </div>
    </div>
	</form>
</cfoutput>