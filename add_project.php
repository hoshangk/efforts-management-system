<?php 
  session_start();
  if (!isset($_SESSION['username'])) {
  	$_SESSION['msg'] = "You must log in first";
  	header('location: login.php');
  }
  if (isset($_GET['logout'])) {
  	session_destroy();
  	unset($_SESSION['username']);
  	header("location: login.php");
  }
?>
<!DOCTYPE html>
<html>
<head>
  <title>Add Project</title>
  <link rel="stylesheet" type="text/css" href="style.css">
  <style>
    .designer {
      display: none;
    }

    .developer {
      display: none;
    }
  </style>
  <script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/1.7.2/jquery.min.js"></script>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
    <script type="text/javascript">
    $(document).ready(function(){
      $('input[type=radio][name=role]').change(function(){
        selected_value = $("input[name='role']:checked").val();
          console.log(selected_value);
          if(selected_value == 'developer')
          {
             $(".developer").show();
             $(".designer").hide(); 
          }           
          else
          {
              $(".designer").show();
              $(".developer").hide();
          }          
      });

      $('select[name=developer]').change(function(){
            console.log("Developer Selected");
      });         
    })
  </script>
</head>

<body>
  <div class="header">
    <h2>Add Project Page</h2>
  </div>
  <div class="content1">
    <form method="post" action="register.php">
    <?php //include('errors.php'); ?>
    <div class="input-group">
      <label>Title</label>
      <input type="text" name="title" value="<?php echo $title; ?>">
    </div>
    <div class="input-group">
      <label>Description</label>
      <textarea name="description" value="<?php echo $description; ?>" rows="6" cols="45"></textarea>
    </div>
    <div class="task">
      <label for="resouces">Resources</label><br>
      <input type="radio" id="developer" name="role" value="developer">
      <label for="developer">Developer</label>
      <div class="developer">
            <select class="browser-default custom-select dropdown-primary" name="developer">
              <option selected>Select Developer</option>
              <option value="dharmendra">Dharmendra</option>
              <option value="harshita">Harshita</option>
              <option value="mustafa">Mustafa</option>
            </select>
      </div>
      <br>
      <input type="radio" id="designer" name="role" value="designer">
      <label for="designer">Designer</label>
      <div class="designer">
          <h3>Designer List</h3>
      </div>
    </div>
    <div class="input-group">
      <button type="submit" class="btn" name="reg_user">Register</button>
    </div>

  </div>

</body>
</html>