<?php
    /*
		Title Function That Echo The Page Title In Case
	*/
	function getTitle()
	{
		global $pageTitle;
		if(isset($pageTitle))
			echo $pageTitle." | Farah's Restaurant - Your Restaurant";
		else
			echo "Farah's Restaurant | Your Restaurant";
	}

	/*
		This function returns the number of items in a given table
	*/

    function countItems($item,$table)
	{
		global $con;
		$stat_ = $con->prepare("SELECT COUNT($item) FROM $table");
		$stat_->execute();
		
		return $stat_->fetchColumn();
	}

    /*
	Check Items Function
	*/
	function checkItem($select, $from, $value)
	{
		global $con;
		$statment = $con->prepare("SELECT $select FROM $from WHERE $select = ? ");
		$statment->execute(array($value));
		$count = $statment->rowCount();
		
		return $count;
	}


  	/*
	    TEST INPUT FUNCTION
	*/

  	function test_input($data)
  	{
		$data = trim($data);
		$data = stripslashes($data);
		$data = htmlspecialchars($data);
		return $data;
	}

?>

