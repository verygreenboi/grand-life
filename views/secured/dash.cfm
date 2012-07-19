<cfoutput>
	#includePartial("/partials/dashmenu")#
	<div class="span9">
       <div class="hidden-phone hero-unit">
		<div id="icon-users" class="icon32"><br></div>
         <h1>Welcome #user.firstname#</h1>
         <p>Information entered below will be displayed publicly on your profile.</p>         
       </div>
       <div class="row-fluid">
        <div class="span4">
			<h2>Upload your Avatar</h2>
			<!--- #blueImpMultiFile(action="uploadavatar")# --->	
			<form action="/grand-life/index.cfm?controller=secured&amp;action=uploadavatar" enctype="multipart/form-data" id="fileupload" method="POST">
				<div class="row-fluid">
		            <div class="span8 fileupload-buttonbar">
		                <span class="btn success fileinput-button">
		                    <span>Add files...</span>
		                    <input type="file" name="uploadurlimage" multiple="">
		                </span>
		                <button type="submit" id="submitImage" class="btn primary start"><i class="icon-upload"></i>Start upload</button>
		                <div class="preview" style="clear:both;"><div style="width:0%;"></div></div>
		            </div>
		        </div>
		        <br>
		        <div class="row-fluid">
		            <div class="span8">
		                <table class="zebra-striped"><tbody class="files"></tbody></table>
		            </div>
		        </div>
			</form>
		</div><!--/span-->
		<div class="span3 profileImg">
			<cfif user.photourl neq "">
				<div class="thumbnail">#imageTag(source="/profile/#user.photourl#", width="100%", height="300px")#</div>
			<cfelse>
				<div class="thumbnail">#imageTag(source="http://placehold.it/199x150", width="100%", height="300px")#</div>	
			</cfif>
		</div><!--/span-->
       </div><!--/row-->
       <div class="row-fluid">
         <div class="span4">
           <h2>Heading</h2>
           <p>Donec  id  elit  non mi porta gravida at eget metus. Fusce dapibus, tellus  ac  cursus  commodo, tortor mauris condimentum nibh, ut fermentum massa  justo  sit  amet risus. Etiam porta sem malesuada magna mollis euismod.  Donec  sed  odio dui. </p>
           <p><a class="btn" href="##" >View details »</a></p>
         </div><!--/span-->
         <div class="span4">
           <h2>Heading</h2>
           <p>Donec  id  elit  non mi porta gravida at eget metus. Fusce dapibus, tellus  ac  cursus  commodo, tortor mauris condimentum nibh, ut fermentum massa  justo  sit  amet risus. Etiam porta sem malesuada magna mollis euismod.  Donec  sed  odio dui. </p>
           <p><a class="btn" href="##" >View details »</a></p>
         </div><!--/span-->
         <div class="span4">
           <h2>Heading</h2>
           <p>Donec  id  elit  non mi porta gravida at eget metus. Fusce dapibus, tellus  ac  cursus  commodo, tortor mauris condimentum nibh, ut fermentum massa  justo  sit  amet risus. Etiam porta sem malesuada magna mollis euismod.  Donec  sed  odio dui. </p>
           <p><a class="btn" href="##" >View details »</a></p>
         </div><!--/span-->
       </div><!--/row-->
     </div>
</cfoutput>