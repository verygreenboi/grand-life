<cfoutput>
<!--- Place HTML here that should be used as the default layout of your application --->
<!DOCTYPE html>
<html lang="en">
	<head>
		#stylesheetLinkTag("columnal")#
		#stylesheetLinkTag("custom")#
		#stylesheetLinkTag("build")#
	</head>
	<body>
		<!--- Header --->
		<header>
			<h1 class="logo">Logo goes here</h1>
			<div class="top-search">
				#startFormTag(action="search")#
				#endFormTag()#
			</div>
			<div class="signin">
				#startFormTag(action="signin", id="signin")#
					#textField(label="Email", objectName="user", property="email", placeholder="Enter Email", Autofocus="", required="")#
					#passwordField(label="Password", objectName="user", property="password", placeholder="Enter Password", required="")#
					#submitTag(value="Sign In")#
				#endFormTag()#
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
		</footer>
		#javaScriptIncludeTag("https://ajax.googleapis.com/ajax/libs/jquery/1.7.2/jquery.min.js")#
	</body>
</html>
</cfoutput>