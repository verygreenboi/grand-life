<cfoutput>
	<div class="span3">
       <div class="well sidebar-nav">
         <ul class="nav nav-list">
           
			<li class="nav-header"><i class="icon-user"></i>User</li> 
           <li class="active">#linkTo(text="<i class='icon-info-sign icon-white'></i> Profile", action="profile")#</li>
           <li><a href="##"><i class="icon-cog"></i>Settings</a></li>
           <li class="nav-header"><i class="icon-envelope"></i>Messages</li>
		
		<!--- TODO: Add a badge to notify unread messages --->
           <li><a href="##"><i class="icon-inbox"></i>Inbox</a></li>
           <li><a href="##"><i class="icon-upload"></i>Sent</a></li>
           <li><a href="##"><i class="icon-pencil"></i>Compose</a></li>
           <li><a href="##" ><i class="icon-trash"></i>Trash</a></li>
           <div class="hidden-phone">
		   
		   <li class="nav-header"><i class="icon-shopping-cart"></i>Market</li>
           <li><a href="##"><i class="icon-chevron-right"></i>Products</a></li>
           <li><a href="##"><i class="icon-chevron-right"></i>Sales</a></li>
           <li><a href="##"><i class="icon-chevron-right"></i>Invoices</a></li>
		   <li><a href="##"><i class="icon-chevron-right"></i>Bills</a></li></div>
		   
		   
           <li class="nav-header"><i class="icon-list"></i>Wallet</li>
           <li><a href="##"><i class="icon-chevron-right"></i>Recharge Account</a></li>
           <li><a href="##"><i class="icon-chevron-right"></i>Check Balance</a></li>
           <li><a href="##" class="hidden-phone"><i class="icon-chevron-right"></i>Recent Transactions</a></li>
           
		<div class="hidden-phone"><li class="nav-header"><i class="icon-briefcase"></i>Job Center</li>
           <li><a href="##"><i class="icon-chevron-right"></i>Professionals</a></li>
           <li><a href="##"><i class="icon-chevron-right"></i>Financiers</a></li></div>
         </ul>
       </div><!--/.well -->
     </div>
</cfoutput>