<!--source code of index.jsp-->
<html>
<head>
<title>Account Creation Form</title>
<link rel="Style sheet"href="https://cdn.jsdeliver.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
<script src="https://cdn.jsdeliver.net/npm/jquery@3.6.0/diist/jquery.slim.min.js"></script>
<script src="https://cdn.jsdeliver.net/npm/popp er.js@1.16.1/dist/umd/popper.min.js"></script>
<script src="https://cdn.jsdeliver.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>
</head>
<body>
<div class="container">
<h3 align='center'><u>Account Creation Form</u></h3>
<form action="insert.jsp"class="was-validated">
<div class="form-group">
<label for="accno">Enter Account Number:</label>
<input type="number" class="form-control"id="accno"place holder="Account Number" name="t1" min="201" max="299"required>
<div class="valid-feedback"></div>
<div class="invalid-feedback">Account Number must be in between 201and299</div>
</div>
<div class="form-group">
<label for="atype">Select Account Type:
</label><br>
<select name="t2">
<option value="SB">Savings Account</option>
<option value="CR">Current Account</option>
<option value="RD">Recurring Account</option>
</select>
</div>
<div class="form-group">
<label for="accno">Enter Starting Balance:</label>
<input type="number"class="form-control"id="balance"placeholder="Starting Balance"name="t3" min="1000" required>
<div class="valid-feed back"></div>
<div class="invalid-feedback">Starting Balance must be Min.Rs.1000</div>
<button type="submit" class="btn btn-primary">Submit</button>
<button type="reset" class="btn btn-danger">Reset</button>
</form>
</div>


