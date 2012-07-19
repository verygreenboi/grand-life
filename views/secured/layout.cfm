<cfoutput>
<!--- Place HTML here that should be used as the default layout of your application --->
<!DOCTYPE html>
<html lang="en">
	<head>
		<meta charset="utf-8">
	    <title>Grand Life | #pageTitle#</title>
	    <meta name="viewport" content="width=device-width, initial-scale=1.0">
	    <meta name="description" content="">
	    <meta name="author" content="">
		#stylesheetLinkTag("bootstrap")#
		#stylesheetLinkTag("bootstrap-responsive")#
		#stylesheetLinkTag("app")#
		<!-- Le HTML5 shim, for IE6-8 support of HTML5 elements -->
	    <!--[if lt IE 9]>
	      <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
	    <![endif]-->
	</head>
	<body class="gray">
		<header>
			<div class="container-fluid"></div>
			<section class="container-fluid">
			<div class="content-inner">
				  <h1 id="logo" class="pump-up">Grand life social trading site.</h1>
					<cfif params.controller eq "home" and params.action eq "index">
						#includePartial("/partials/topsearch")#
					</cfif>
					</div>
			</section>
		</header>
		
		<!--- Main content --->
		<section class="container-fluid">
			<div class="row-fluid dash">
				#includeContent()#
				<!--- <div class="span3 visible-desktop">
					<p>Trending Sales</p>
				</div> --->
			</div>
		</section>
		<footer class="container-fluid">
			
		</footer>
		<cfif get("environment") is "design">
			#javascriptIncludeTag("jquery-1.7.2.min")#
		<cfelse>
			#javaScriptIncludeTag("https://ajax.googleapis.com/ajax/libs/jquery/1.7.2/jquery.min.js")#
		</cfif>
		#javaScriptIncludeTag("bootstrap.min")#
		#javaScriptIncludeTag("http://malsup.github.com/jquery.form.js")#
		<!--- #javaScriptIncludeTag("http://blueimp.github.com/JavaScript-Load-Image/load-image.min.js")#
		#javaScriptIncludeTag("http://blueimp.github.com/JavaScript-Canvas-to-Blob/canvas-to-blob.min.js")#
		#javaScriptIncludeTag("http://blueimp.github.com/Bootstrap-Image-Gallery/js/bootstrap-image-gallery.min.js")#
		#javaScriptIncludeTag("http://blueimp.github.com/jQuery-File-Upload/js/jquery.iframe-transport.js")#
		#javaScriptIncludeTag("http://blueimp.github.com/jQuery-File-Upload/js/jquery.fileupload.js")#
		#javaScriptIncludeTag("http://blueimp.github.com/jQuery-File-Upload/js/jquery.fileupload-fp.js")#
		#javaScriptIncludeTag("http://blueimp.github.com/jQuery-File-Upload/js/jquery.fileupload-ui.js")#
		#javaScriptIncludeTag("http://blueimp.github.com/jQuery-File-Upload/js/locale.js")#
		#javaScriptIncludeTag("http://blueimp.github.com/jQuery-File-Upload/js/main.js")# --->		
		<script type="text/javascript">
		  $(document).ready(function(){
				$('input').hover(function()
				{
				$(this).popover('show')
				});
				$('##submitImage').bind('click', function(){
				  		$(".preview").html('');
						$(".preview").html('<img src="images/loader.gif" alt="Uploading...."//>');
						$("##fileupload").ajaxForm({
						target: '.preview'
						}).submit();
					});
			});
		  </script>	
	</body>
</html>
</cfoutput>