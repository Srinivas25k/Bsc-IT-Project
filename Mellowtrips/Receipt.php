<html>
<head>
<title>Receipt<title>
<body>
<div>

<?php
include('includes/config.php');

echo "Full name" echo htmlentities($result->FullName);

echo "Packageid" echo htmlentities($result->Packageid);

echo "Package name" echo htmlentities($result->PackageName);

echo "Date of Journey" echo htmlentities($result->fromdate);

echo "Price" echo htmlentities($result->PackagePrice);

?>

</div>
</body>
</html>