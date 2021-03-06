<%@taglib prefix="sf" uri="http://www.springframework.org/tags/form"%>

<div class = "container">
	<div class = "row">
		<c:if test="${not empty message }">
			<div class="col-xs-12">
				<div class="alert alert-success alert-dismissible">
					<button type="button" class="close" data-dismiss="alert">&times;</button>
					
					${message}
					
				</div>
		
			</div>
		</c:if>
		
		<div class = "col-md-offset-2 col-md-8">
			<div class = "panel panel-primary">
				<div class = "panel-heading">
					<h4>Product Management</h4>
				</div>
				<div class = "panel-body">
					<!-- FORM ELEMENT -->
					<sf:form class = "form-horizantal" modelAttribute="product"
						action ="${contextRoot}/manage/products"
						method = "POST"
						enctype = "multipart/form-data"	>
						
						
					
			          	<div class = "from-group">
							<label class = "control-label col-md-4" for="name">Enter Product Name:</label>
							<div class = "col-md-8">
								<sf:input type = "text" path ="name" id = "name" placeholder="Product Name" class="form-control" />
							<!-- 	<em class="help-block">Please Enter Product Name!</em> -->
								<sf:errors path="name" cssClass="help-block" element="em" />
							</div>
						</div>
					
						<div class = "from-group">
							<label class = "control-label col-md-4" for="brand">Enter brand Name:</label>
							<div class = "col-md-8">
								<sf:input type = "text" path ="brand" id = "brand" placeholder="Product Name" class="form-control" />
							<!-- 	<em class="help-block">Please Enter brand Name!</em> -->
								<sf:errors path="brand" cssClass="help-block" element="em" />
							</div>
						</div>
						
						<div class = "from-group">
							<label class = "control-label col-md-4" for="description">Product Description:</label>
							<div class = "col-md-8">

								<sf:textarea path="description" id="descrption" rows="4" placeholder="Write a description for the product!" class="form-control"></sf:textarea>	
								<sf:errors path="description" cssClass="help-block" element="em" />
								<br>
							</div>
						</div>
						
						<div class = "from-group">
							<label class = "control-label col-md-4" for="unitPrice">Enter Unit Price:</label>
							<div class = "col-md-8">
								<sf:input type = "text" path ="unitPrice" id = "unitPrice" placeholder="Unit Price In &#8377" class="form-control" />
							<!-- 	<em class="help-block">Please Enter Unit Price!</em> -->
								<sf:errors path="unitPrice" cssClass="help-block" element="em" />
							</div>
						</div>
						
						<div class = "from-group">
							<label class = "control-label col-md-4" for="quantity">Quantity Available:</label>
							<div class = "col-md-8">
								<sf:input type = "number" path ="quantity" id = "quantity" placeholder="Quantity Available" class="form-control" />
						<!-- 		<em class="help-block">Please Enter Unit Price!</em> -->
							</div>
						</div>
						
						
						<!-- File element for image upload -->
						<div class = "from-group">
							<label class = "control-label col-md-4" for="file">select an Image:</label>
							<div class = "col-md-8">
								<sf:input type = "file" path ="file" id = "file" class="form-control" />
									<sf:errors path="file" cssClass="help-block" element="em" />
						
							</div>
						</div>
						
						
						<div class = "from-group">
							<label class = "control-label col-md-4" for="categoryId">Select Category:</label>
							<div class = "col-md-8">
								<sf:select class = "form-control" id = "categoryId" path="categoryId"
								 	items="${categories}"
								 	itemLabel="name"
								 	itemValue="id" >
								 </sf:select>
				
							</div>
						</div>
						
						
						<div class = "from-group">
							<div class = "col-md-offset-4 col-md-8">
								<input type = "submit" name ="submit" id = "submit" value="Submit" class="btn btn-primary" />
								<!-- Hidden fields for products -->
								<sf:hidden path="id"/>
								<sf:hidden path="code"/>
								<sf:hidden path="supplierId"/>
								<sf:hidden path="active"/>
								<sf:hidden path="purchases"/>
								<sf:hidden path="views"/>
							</div>
						</div>
						
					</sf:form>
					
				</div>
			</div>
		</div>
	</div>
</div>