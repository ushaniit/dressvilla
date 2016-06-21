<%@ include file="header.jsp" %>

  <div class="container">
  <img src="resources/images/img24.jpg" />
      <div ng-app ="mainApp" ng-controller = "productcontroller">
      <div  >
          <input type="text"   ng-model="searchinst">
          <form action="productdetail" method="get">
         <table class="table table-bordered table-striped">
           
                  
            
               
                <thead>
                     <tr>
                     
                        <th>pid</th>
                        <th>name</th>
                        <th>brand</th>
                        <th>cartegory</th>
                        <th>price</th>
                     </tr>
                  </thead>
                    <tbody>
                    
                       <tr ng-repeat="items in mus | filter:searchinst">
                                    <td><input type=text name="id" value="{{ items.pid }}"></td>
                                    <td><input type=text name="name" value="{{items.name}}"></td>
                                    <td><input type=text name="brand" value="{{items.brand}}"></td>
                                   <td><input type=text name="cartegory" value="{{items.cartegory}}"></td>
                                   <td><input type=text name="price" value="{{items.price}}"></td>
                       <td>   
         <button type="submit" class="btn btn-default"><span class="glyphicon glyphicon-plus">
                                       </td>
                                     <td> <input type=hidden name="desc" value="{{items.desc}}"></td>
                                       
                                </tr>
                                </tbody>
                            </table>
                </form>
                  
              
        </div> 
        </div>
      </div>
    

<%@ include file="footer.jsp" %>