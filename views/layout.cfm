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
		<!-- Le HTML5 shim, for IE6-8 support of HTML5 elements -->
	    <!--[if lt IE 9]>
	      <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
	    <![endif]-->
	</head>
	<body>
	<div class="containers">	<!--- Header --->
		<header class="navbar navbar-fixed-top">
		
			<div class="navbar-inner">
				<nav class="container-fluid">
					<h1 class="btn btn-navbar">Logo goes here</h1>
					
					<cfif params.controller eq "Home" AND params.action eq "index">
					<div class="well modal hide fade" id="myModal">
						#includePartial("/partials/homehead")#
					</div>
					<div class="btn-group pull-right">
						<a class="btn" data-toggle="modal" href="##myModal" >Sign in</a>
					</div>
					<cfelseif params.controller eq "Home" and params.action eq "login">
							#includePartial("/partials/loginhead")#
					</cfif>
					
				</nav>
			</div>
		</header>
		
		<!--- /Header --->
		
		<!--- Section: Main content --->
		<section class="main">
			<cfoutput>#includeContent()#</cfoutput>
		</section>
		
		<!--- /Section: Main content --->
		
		<!--- Aside: Trend --->
		
		<aside>
			
		</aside>
		<!--- /Aside --->
		
		<!--- Footer --->
		
		<footer>
		</footer></div>
		#javaScriptIncludeTag("https://ajax.googleapis.com/ajax/libs/jquery/1.7.2/jquery.min.js")#
		#javaScriptIncludeTag("bootstrap.min")#
	</body>
</html>
</cfoutput>