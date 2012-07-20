<cfcomponent extends="Controller">

  <cffunction name="init">
    <cfset filters(through="new")>
  </cffunction>

  <cffunction name="index">
    <cfset shoppingCart = session.shoppingCart.list()>
    <cfset shoppingCartTotal = session.shoppingCart.getCartTotalPrice()>

    <cfset renderPage(action="index", layout="/pages/layout")>
  </cffunction>

  <cffunction name="new">
    <cfif NOT StructKeyExists(session, "shoppingCart")>
      <cfset session.shoppingCart = createObject("component", "models.ShoppingCart").init()>
    </cfif>
  </cffunction>

  <cffunction name="create">
    <cfset product = model("Product").findByKey(key=params.productId, include="category")>

    <!--- Check if there are as many products available --->
    <cfif product.stock GTE params.quantity>
      <cfset session.shoppingCart.add(product, params.quantity)>

      <cfset flashInsert(success="El item fue agregado al cochecito.")>
    <cfelse>
      <cfset flashInsert(error="La cantidad de items que desea agregar es superior a la de nuestro inventario.")>
    </cfif>

    <cfset redirectTo(action="index")>
  </cffunction>

  <cffunction name="update">    

    <cfset var loc = {}>

    <cfset loc.errorFound = false>

    <cfloop from="1" to="#ListLen(params.productId)#" index="i">
      <!--- Check to see if the product is available --->
      <cfset loc.product = model("Product").findOne(where="id = #ListGetAt(params.productId, i)# AND stock >= #ListGetAt(params.quantity, i)#")>

      <!--- Check if something was found --->
      <cfif isObject(loc.product)>
        <cfset session.shoppingCart.update(ListGetAt(params.productId, i), ListGetAt(params.quantity, i))>
      <cfelse>
        <cfset loc.errorFound = true>
      </cfif>
    </cfloop>

    <cfif loc.errorFound>
      <cfset flashInsert(error="La cantidad de items que desea agregar es superior a la de nuestro inventario.")>
      <cfset redirectTo(action="index")>
    <cfelse>
      <cfset flashInsert(success="Su cochecito fue actualizado con exito.")>
      <cfset redirectTo(action="index")>
    </cfif>
  </cffunction>

  <cffunction name="delete">
    <cfset session.shoppingCart.empty()>

    <cfset flashInsert(success="Your shopping cart was emptied successfully.")>
    <cfset redirectTo(action="index")>
  </cffunction>

  <cffunction name="destroy">
    <cfset session.shoppingCart = createObject("component", "models.ShoppingCart").init()>
  </cffunction>

</cfcomponent>