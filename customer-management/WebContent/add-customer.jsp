<%@ include file="navbar.jsp"%>
<div class='container'>
<div class='card col-md-8 mx-auto'>
<div class='card-body'>
<form action="save-record.jsp" method="post">
<div class='row'>
<div class='form-group col-md-12'>
<label for="cid">Enter customerID</label><span>*</span>
<input type="text" class="form-control " name="cid" id="cid" required>
</div>
</div>
<div class='row'>
<div class='form-group col-md-6'>
<label for="firstname">Enter FirstName</label><span>*</span>
<input type="text" class="form-control " name="firstname" id="firstname" required>
</div>
<div class='form-group col-md-6'>
<label for="lastname">Enter LastName</label><span>*</span>
<input type="text" class="form-control " name="lastname" id="lastname" required>
</div>
</div>
<div class='row'>
<div class='form-group col-md-12'>
<label for="address">Enter Address</label><span>*</span>
<input type="text" class="form-control " name="address" id="address" required>
</div>
</div><div class='row'>
<div class='form-group col-md-12'>
<label for="phoneno">Enter PhoneNo</label><span>*</span>
<input type="text" class="form-control " name="phoneno" id="phoneno" required>
</div>
</div>
<div class='row'>
<div class='form-group col-md-12'>
<label for="email">Enter E-mail</label><span>*</span>
<input type="text" class="form-control " name="email" id="email">
</div>
</div>
<div class='row'>
<div class='form-group col-md-12'>
<div>
<button class='btn btn-primary bt'>Save Record</button>
</div>
</div>
</div>
</form>
</div>
</div>
</div>
