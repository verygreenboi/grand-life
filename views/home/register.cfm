<cfparam name="user">
<cfoutput>
		<div class="span9 cat-inner">
		<cfif user.hasErrors()>
			<div class="alert alert-error">
			  #errorMessagesFor("user")#
			</div>
		</cfif>			
			#startFormTag(action="create", class="well form-horizontal", id="registerHere")#
				<fieldset>
					<legend>Registration</legend>
						<!--- First Name --->
						<div class="control-group">
							<label class="control-label">First Name</label>
							<div class="controls">
								<input type="text" class="input-xlarge" id="first_name" name="user[firstname]" rel="popover" data-content="Enter your first name." data-original-title="First Name">
							</div>
						</div>
						
						<!--- Last Name --->
						<div class="control-group">
							<label class="control-label">Last Name</label>
							<div class="controls">
								<input type="text" class="input-xlarge" id="last_name" name="user[lastname]" rel="popover" data-content="Enter your Last name." data-original-title="Last Name">
							</div>
						</div>
						
						<!--- Email --->
						<div class="control-group">
							<label class="control-label">Email</label>
							<div class="controls">
								<input type="text" class="input-xlarge" id="email" name="user[email]" rel="popover" data-content="Enter a valid Email address." data-original-title="Email">
							</div>
						</div>
						
						<!--- Password --->
						<div class="control-group">
							<label class="control-label" for="input01">Password</label>
						      <div class="controls">
						        <input type="password" class="input-xlarge" id="pwd" name="user[password]" rel="popover" data-content="6 characters or more! Be tricky" data-original-title="Password">
						       
						      </div>
						</div>
						
						<div class="control-group">
							<label class="control-label" for="input01">Confirm Password</label>
						      <div class="controls">
						        <input type="password" class="input-xlarge" id="cpwd" name="user[passwordConfirmation]" rel="popover" data-content="Re-enter your password for confirmation." data-original-title="Re-Password">
						       
						      </div>
						</div>
						
						<!--- Sex --->
						
						<div class="control-group">
							<label class="control-label" for="input01">Gender</label>
						      <div class="controls">
						        <select name="user[sex]" id="gender">
								                <option value="M">Male</option>
								                <option value="F">Female</option>
								<option value="other">Other</option>
								               
								              </select>
						       
						      </div>
						
						</div>
						
						<div class="control-group">
							<label class="control-label" for="input01"></label>
						      <div class="controls">
						       <button type="submit" class="btn btn-success" rel="tooltip" title="first tooltip">Create My Account</button>
						       
						      </div>
						
						</div>
				</fieldset>
				#hiddenFieldTag(name="user[role]", value="3")#
			#endFormTag()#
		</div>

</cfoutput>