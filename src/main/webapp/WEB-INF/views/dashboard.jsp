<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en" class="h-100">

<head>
	<!-- Required meta tags -->
    <meta charset="UTF-8">
    <meta name="description" content="Free Web tutorials">
    <meta name="keywords" content="HTML, CSS, JavaScript">
    <meta name="author" content="John Doe">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>Dashboard</title>

	<!-- Bootstrap CSS -->
	<link rel="stylesheet" type="text/css" href="./assets/css/bootstrap.min.css" />
	<!-- Font Awesome CDN Link -->
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" integrity="sha512-SfTiTlX6kk+qitfevl/7LibUOeJWlt9rbyDn92a1DqWOw9vWG2MFoays0sgObmWazO5BQPiFucnnEAjpAB+/Sw==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <!-- Style CSS -->
	<link rel="stylesheet" type="text/css" href="./assets/css/style.css" />
    <!-- Responsive CSS -->
	<link rel="stylesheet" type="text/css" href="./assets/css/responsive.css" />
  <style>
    
  </style>
</head>

<body>

<div class="wrapper d-flex">
  <nav class="sidebar">
    <header>
        <div class="image-text">
            <span class="image">
                <img src="./assets/images/csc-logo.png" alt=""/>
            </span>

            <!-- <div class="text logo-text">
                <span class="name">TomTom</span>
                <span class="profession">New Edge</span>
            </div> -->
        </div>        
    </header>

    <div class="menu-bar">
        <div class="menu">
            <ul class="menu-links">
                <li class="nav-link active">
                    <a href="#">
                        <i class='fa fa-home icon' ></i>
                        <span class="text nav-text">Home</span>
                    </a>
                </li>                
                <li class="nav-link">
                    <a href="add-enquiry.html">
                        <i class='fa fa-plus-circle icon' ></i>
                        <span class="text nav-text">Add Enquiry</span>
                    </a>
                </li>           
                <li class="nav-link">
                    <a href="view-enqiry-list.html">
                        <i class='fa fa-eye icon'></i>
                        <span class="text nav-text">View user</span>
                    </a>
                </li>
            </ul>
        </div>

        <div class="bottom-content">
            <li class="">
                <a href="AdminLogout">
                    <i class='fa fa-sign-out icon' ></i>
                    <span class="text nav-text">Logout</span>
                </a>
            </li>
           

        </div>
    </div>

  </nav>

  <main class="content">
    <div class="topbar"> 
        <i class='fa fa-bars toggle'></i>     
      <p class="m-0">State Bank of India</p>
      <div class="dropdown">
        <button class="btn user_btn dropdown-toggle" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
            <span class="avatar"><img src="./assets/images/user-icon.png" class="w-100"/></span> Admin
        </button>
        <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
          <a class="dropdown-item" href="#">Profile</a>
          <a class="dropdown-item" href="AdminLogout">Log out</a>
        </div>
      </div>
    </div>
    
    <div class="main_content">
        <div class="top_content">
            <h3 class="m-0" style="color: #03233d;"><i class="fa fa-home mr-3"></i>Dashboard</h3>
        </div>
     <div class="row">
        <div class="col-md-3">
            <div class="counter">
                <div class="counter-icon">
                    <span><i class="fa fa-briefcase"></i></span>
                </div>
                <h3>Web Designing</h3>
                <span class="counter-value">862</span>
            </div>            
        </div>
        <div class="col-md-3">
            <div class="counter pink">
                <div class="counter-icon">
                    <span><i class="fa fa-globe"></i></span>
                </div>
                <h3>Web Development</h3>
                <span class="counter-value">814</span> 
            </div>
        </div>
        <div class="col-md-3">
            <div class="counter purple">
                <div class="counter-icon">
                    <span><i class="fa fa-globe"></i></span>
                </div>
                <h3>Web Development</h3>
                <span class="counter-value">814</span> 
            </div>
        </div>
        <div class="col-md-3">
            <div class="counter blue">
                <div class="counter-icon">
                    <span><i class="fa fa-globe"></i></span>
                </div>
                <h3>Web Development</h3>
                <span class="counter-value">814</span> 
            </div>
        </div>
     </div>

   <!-- DataTales Content Row -->
   <div class="row mt-3">
    <div class="col-md-12">
     <div class="card shadow mb-4">
         <div class="card-header py-3">
             <h6 class="m-0 font-weight-bold text-white">Data List</h6>
         </div>
         <div class="card-body">
            <div class="filters row align-items-end mb-2">
                <div class="col-md-3">
                    <div class="form-group mb-0">
                        <label for="state">State</label>
                        <select class="form-control" id="state">
                            <option value="">Rajasthan</option>
                            <option value="">Delhi</option>
                        </select>
                    </div> 
                </div>

                <div class="col-md-3">
                    <div class="form-group mb-0">
                        <label>From date:</label>
                        <input type="date" class="form-control">
                    </div>
                </div>

                <div class="col-md-3">
                    <div class="form-group mb-0">
                        <label>To date:</label>
                        <input type="date" class="form-control">
                    </div>
                </div>
                <div class="col-md-3">
                    <button class="btn btn-search mr-2">Search</button>
                    <button class="btn btn-export mr-2">Export</button>
                </div>
               
                
               
            </div>
             <div class="table-responsive">
                 <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                     <thead>
                         <tr>
                             <th>VLE Name</th>
                             <th>VLE Id</th>
                             <th>Email Id</th>
                             <th>State</th>
                             <th>District</th>
                             <th>Block</th>
                             <th>Banners</th>
                             <th>Action</th>
                         </tr>
                     </thead>
                     <tbody>
                         <tr>
                             <td>Tiger Nixon</td>
                             <td>12345</td>
                             <td>Edinburgh@test.com</td>
                             <td>Bihar</td>
                             <td>Ptna</td>
                             <td>Devli</td>
                             <td><div id="basic" class="upload_preview_table">
                                <a href="./assets/images/upload.jpg" title="image1" rel="lightbox">
                                    <img  src="./assets/images/upload.jpg" alt="your image" class="w-100"/>
                                </a> 
                                <a href="./assets/images/upload.jpg" title="image2" rel="lightbox">
                                    <img  src="./assets/images/upload.jpg" alt="your image" class="w-100"/>
                                </a> 
                                <a href="./assets/images/upload.jpg" title="image3" rel="lightbox">
                                    <img  src="./assets/images/upload.jpg" alt="your image" class="w-100"/>
                                </a>                             
                            </div> </td>
                             <td>
                                <a href="#" class="me-2 action_btn varify_btn" data-bs-toggle="tooltip" data-bs-placement="bottom" title="Varify"><i class="fa fa-check"></i></a>
                                <a href="#" class="me-2 action_btn approve_btn" data-bs-toggle="tooltip" data-bs-placement="bottom" title="Approve"><i class="fa fa-check"></i></a>
                                <a href="#" class="me-2 action_btn reject_btn" data-bs-toggle="tooltip" data-bs-placement="bottom" title="Reject"><i class="fa fa-close"></i></a>
                             </td>
                         </tr>

                         <tr>
                            <td>Jonny Dixon</td>
                            <td>12345</td>
                            <td>Edinburgh@test.com</td>
                            <td>Bihar</td>
                            <td>Ptna</td>
                            <td>Devli</td>
                            <td><div id="basic" class="upload_preview_table">
                               <a href="./assets/images/upload.jpg" title="image1" rel="lightbox">
                                   <img  src="./assets/images/upload.jpg" alt="your image" class="w-100"/>
                               </a> 
                               <a href="./assets/images/upload.jpg" title="image2" rel="lightbox">
                                   <img  src="./assets/images/upload.jpg" alt="your image" class="w-100"/>
                               </a> 
                               <a href="./assets/images/upload.jpg" title="image3" rel="lightbox">
                                   <img  src="./assets/images/upload.jpg" alt="your image" class="w-100"/>
                               </a>                             
                           </div> </td>
                            <td>
                               <a href="#" class="me-2 action_btn varify_btn" data-bs-toggle="tooltip" data-bs-placement="bottom" title="Varify"><i class="fa fa-check"></i></a>
                               <a href="#" class="me-2 action_btn approve_btn" data-bs-toggle="tooltip" data-bs-placement="bottom" title="Approve"><i class="fa fa-check"></i></a>
                               <a href="#" class="me-2 action_btn reject_btn" data-bs-toggle="tooltip" data-bs-placement="bottom" title="Reject"><i class="fa fa-close"></i></a>
                            </td>
                        </tr>

                        <tr>
                            <td>Sajid Nabab</td>
                            <td>12345</td>
                            <td>Edinburgh@test.com</td>
                            <td>Bihar</td>
                            <td>Ptna</td>
                            <td>Devli</td>
                            <td><div id="basic" class="upload_preview_table">
                               <a href="./assets/images/upload.jpg" title="image1" rel="lightbox">
                                   <img  src="./assets/images/upload.jpg" alt="your image" class="w-100"/>
                               </a> 
                               <a href="./assets/images/upload.jpg" title="image2" rel="lightbox">
                                   <img  src="./assets/images/upload.jpg" alt="your image" class="w-100"/>
                               </a> 
                               <a href="./assets/images/upload.jpg" title="image3" rel="lightbox">
                                   <img  src="./assets/images/upload.jpg" alt="your image" class="w-100"/>
                               </a>                             
                           </div> </td>
                            <td>
                               <a href="#" class="me-2 action_btn varify_btn" data-bs-toggle="tooltip" data-bs-placement="bottom" title="Varify"><i class="fa fa-check"></i></a>
                               <a href="#" class="me-2 action_btn approve_btn" data-bs-toggle="tooltip" data-bs-placement="bottom" title="Approve"><i class="fa fa-check"></i></a>
                               <a href="#" class="me-2 action_btn reject_btn" data-bs-toggle="tooltip" data-bs-placement="bottom" title="Reject"><i class="fa fa-close"></i></a>
                            </td>
                        </tr>
                         
                     </tbody>
                 </table>
             </div>
         </div>
    </div>
    </div>
 </div>
    
  </main>
</div>

	
	<!--Jquery JS -->
	<script src="./assets/js/jquery.min.js"></script>
	<!--Popper JS -->
	<script src="./assets/js/popper.min.js"></script>
	<!--Bootstrap JS -->
	<script src="./assets/js/bootstrap.min.js"></script>
    <!--Custom JS -->
	<script src="./assets/js/custom.js"></script>
    <!-- Page level plugins -->    
    <script src="./assets/js/jquery-simple-lightbox.js"></script>
    <script src="./assets/js/datatables/jquery.dataTables.min.js"></script>
    <script src="./assets/js/datatables/dataTables.bootstrap4.min.js"></script>

	<script>
    const body = document.querySelector('body'),
        sidebar = body.querySelector('nav'),
        toggle = body.querySelector(".toggle")
        wider = body.querySelector(".content")

    toggle.addEventListener("click", () => {
        sidebar.classList.toggle("close");
        wider.classList.toggle("wider")
    })
		
    $('#basic').simpleLightbox();


	</script>
</body>

</html>