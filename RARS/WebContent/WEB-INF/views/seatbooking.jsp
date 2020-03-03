<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>

<meta charset="UTF-8">
 <meta name="viewport" content="width=device-width">
 <style type="text/css">
 
 *, *:before, *:after {
  box-sizing: border-box;
}


html {
  font-size: 16px;
}


.plane {
  margin: 20px auto;
 
        max-width: 600px;
}


.cockpit {
  height: 100px;
 
         position: relative;
  
         overflow: hidden;
 
         text-align: center;
  
         border-bottom: 5px solid #d8d8d8;
}

.cockpit:before {
  content: "";
  
                display: block;
  
                position: absolute;
  
                top: 0;
  left: 0;
 
                height: 250px;
 
                width: 100%;
  
                border-radius: 50%;

                border-right: 5px solid #d8d8d8;
  
                border-left: 5px solid blue;
}

.cockpit h1 {
  width: 30%;
  
               margin: 20px auto 10px auto;
}


.exit {
  position: relative;
  
height: 50px;
}

.exit:before, .exit:after {
  content: "EXIT";

                          font-size: 14px;
 
                          line-height: 18px;

                          padding: 0px 2px;
  
                          font-family: "Arial Narrow", Arial, sans-serif;
 
                          display: block;

                          position: absolute;
 
                          background: green;
  
                          color: white;

                          top: 50%;
 
                          transform: translate(0, -50%);
}

.exit:before {
  left: 0;
}

.exit:after {
  right: 0;
}


.fuselage {
  border-right: 5px solid #d8d8d8;
  
             border-left: 5px solid #d8d8d8;
}


ol {
  list-style: none;
 
      padding: 0;

      margin: 0;
}


.seats {
  display: flex;
  
       flex-direction: row;

       flex-wrap: nowrap;
     
  justify-content: flex-start;
}


.seat {
  display: flex;
  
      flex: 0 0 8.28571428571429%;
  
      padding: 3px;
  position: relative;
}
      
.seat:nth-child(5) {
  margin-right: 7.28571428571429%;
}

.seat input[type=checkbox] {
  position: absolute;
 
                           opacity: 0;
}

.seat input[type=checkbox]:checked + label {
  background: green;
                                         
  -webkit-animation-name: rubberBand;

                                            animation-name: rubberBand;

                                            animation-duration: 300ms;

                                            animation-fill-mode: both;
}

.seat input[type=checkbox]:disabled + label {
  background: #F42536;
 
                                            text-indent: -9999px;
 
                                            overflow: hidden;
}

.seat input[type=checkbox]:disabled + label:after {
  content: "X";
 
                                                  text-indent: 0;

                                                  position: absolute;
                                                
  top: 4px;

                                                  left: 50%;

                                                  transform: translate(-50%, 0%);
}

.seat input[type=checkbox]:disabled + label:hover {
  box-shadow: none;
 
                                                  cursor: not-allowed;
}

.seat label {
  display: block;
 
            position: relative;

            width: 100%;
 
            text-align: center;

            font-size: 14px;
          
  font-weight: bold;
 
            line-height: 1.5rem;
 
            padding: 4px 0;

            background: #dddddd;
  
            border-radius: 5px;

            animation-duration: 300ms;

            animation-fill-mode: both;
}

.seat label:before {
  content: "";

                 position: absolute;
 
		 width: 75%;
		
 height: 75%;

		 top: 1px;

	         left: 50%;
  transform: translate(-50%, 0%);
  
                 background: rgba(255, 255, 255, 0.4);
 
                 border-radius: 3px;
}

.seat label:hover {
  cursor: pointer;
  
                  box-shadow: 0 0 0px 2px #5C6AFF;
}


@-webkit-keyframes rubberBand {
  0% {
    -webkit-transform: scale3d(1, 1, 1);
    transform: scale3d(1, 1, 1);
  }
  30% {
    -webkit-transform: scale3d(1.25, 0.75, 1);
    transform: scale3d(1.25, 0.75, 1);
  }
  40% {
    -webkit-transform: scale3d(0.75, 1.25, 1);
    transform: scale3d(0.75, 1.25, 1);
  }
  50% {
    -webkit-transform: scale3d(1.15, 0.85, 1);
    transform: scale3d(1.15, 0.85, 1);
  }
  65% {
    -webkit-transform: scale3d(0.95, 1.05, 1);
    transform: scale3d(0.95, 1.05, 1);
  }
  75% {
    -webkit-transform: scale3d(1.05, 0.95, 1);
    transform: scale3d(1.05, 0.95, 1);
  }
  100% {
    -webkit-transform: scale3d(1, 1, 1);
    transform: scale3d(1, 1, 1);
  }
}
@keyframes rubberBand {
  0% {
    -webkit-transform: scale3d(1, 1, 1);
    transform: scale3d(1, 1, 1);
  }
  30% {
    -webkit-transform: scale3d(1.25, 0.75, 1);
    transform: scale3d(1.25, 0.75, 1);
  }
  40% {
    -webkit-transform: scale3d(0.75, 1.25, 1);
    transform: scale3d(0.75, 1.25, 1);
  }
  50% {
    -webkit-transform: scale3d(1.15, 0.85, 1);
    transform: scale3d(1.15, 0.85, 1);
  }
  65% {
    -webkit-transform: scale3d(0.95, 1.05, 1);
    transform: scale3d(0.95, 1.05, 1);
  }
  75% {
    -webkit-transform: scale3d(1.05, 0.95, 1);
    transform: scale3d(1.05, 0.95, 1);
  }
  100% {
    -webkit-transform: scale3d(1, 1, 1);
    transform: scale3d(1, 1, 1);
  }
}
.rubberBand {
  -webkit-animation-name: rubberBand;
  animation-name: rubberBand;
}
 
 
 
 
 </style>
  <!-- <link rel="stylesheet" type="text/css" href="screen.css"> -->
</head>
<body>

    
<h1>Please select a seat</h1>
 
 
<div class="exit exit--front fuselage">

</div>
  <ol class="cabin fuselage">

          <center> <i>Normal</i></center>
    <li class="row row--1">
     
    <ol class="seats" type="A">
    
    <li class="seat">
     <input type="checkbox" id="1A" />
  <label for="1A">1A</label>
        </li>
 
    <li class="seat">
     <input type="checkbox" id="1B" />
  <label for="1B">1B</label>
        </li>
    
    <li class="seat">
     <input type="checkbox" id="1C" />  <label for="1C">1C</label>
        </li>
  
    <li class="seat">
     <input type="checkbox" disabled id="1D" />
   <label for="1D">Occupied</label>
    </li>
     
    <li class="seat">
     <input type="checkbox" id="1E" />
            <label for="1E">1E</label>
          </li>
      
    <li class="seat">
     <input type="checkbox" id="1F" />
            <label for="1F">1F</label>
          </li>
 
    <li class="seat">
     <input type="checkbox" id="1G" />
            <label for="1G">1G</label>
          </li>
 
    <li class="seat">
     <input type="checkbox" id="1H" />
            <label for="1H">1H</label>
          </li>
 
    <li class="seat">
     <input type="checkbox" id="1I" />
            <label for="1I">1I</label>
          </li>
 
    <li class="seat">
     <input type="checkbox" id="1J" />
            <label for="1J">1J</label>
          </li>
 
    </ol>
    </li>

   

    <li class="row row--2">
    
    <ol class="seats" type="A">

    <li class="seat">
   <input type="checkbox" id="2A" />
          <label for="2A">2A</label>
          </li>
        
    <li class="seat">
   <input type="checkbox" id="2B" />
          <label for="2B">2B</label>
          </li>
        
    <li class="seat">
   <input type="checkbox" id="2C" />
          <label for="2C">2C</label>
          </li>
      
    <li class="seat">
   <input type="checkbox" id="2D" />
          <label for="2D">2D</label>
          </li>
 
    <li class="seat">
   <input type="checkbox" id="2E" />
          <label for="2E">2E</label>
          </li>
        
    <li class="seat">
   <input type="checkbox" id="2F" />
          <label for="2F">2F</label>
          </li>
  
    <li class="seat">
   <input type="checkbox" id="2G" />
          <label for="2G">2G</label>
          </li>
 
    <li class="seat">
   <input type="checkbox" id="2H" />
          <label for="2H">2H</label>
          </li>
 
    <li class="seat">
   <input type="checkbox" id="2I" />
          <label for="2I">2I</label>
          </li>
 
    <li class="seat">
   <input type="checkbox" id="2J" />
          <label for="2J">2J</label>
          </li>
     
    </ol>
   </li>
 

    <li class="row row--3">
      
    <ol class="seats" type="A">
    
    <li class="seat">
          <input type="checkbox" id="3A" />
          <label for="3A">3A</label>
        </li>
       
    <li class="seat">
          <input type="checkbox" id="3B" />          <label for="3B">3B</label>
        </li>
        
    <li class="seat">
          <input type="checkbox" id="3C" />
          <label for="3C">3C</label>
        </li>
        
    <li class="seat">
          <input type="checkbox" id="3D" />
          <label for="3D">3D</label>
        </li>
        
    <li class="seat">
          <input type="checkbox" id="3E" />
          <label for="3E">3E</label>
        </li>
       
    <li class="seat">
          <input type="checkbox" id="3F" />
          <label for="3F">3F</label>
        </li>

    <li class="seat">
          <input type="checkbox" id="3G" />
          <label for="3G">3G</label>
        </li>
 
    <li class="seat">
          <input type="checkbox" id="3H" />
          <label for="3H">3H</label>
        </li>
 
    <li class="seat">
          <input type="checkbox" id="3I" />
          <label for="3I">3I</label>
        </li>
 
    <li class="seat">
          <input type="checkbox" id="3J" />
          <label for="3J">3J</label>
        </li>
       
    </ol>
    </li>
   

<BR><HR>
<center> <i>Excecutive</i></center>


   <li class="row row--4">
     
   <ol class="seats" type="A">
    
   <li class="seat">
          <input type="checkbox" id="4A" />
          <label for="4A">4A</label>
        </li>

   <li class="seat">
          <input type="checkbox" id="4B" />
          <label for="4B">4B</label>
        </li>
      
   <li class="seat">
          <input type="checkbox" id="4C" />
          <label for="4C">4C</label>
        </li>
       
   <li class="seat">
          <input type="checkbox" id="4D" />
          <label for="4D">4D</label>
        </li>
        
   <li class="seat">
          <input type="checkbox" id="4E" />
          <label for="4E">4E</label>
        </li>
        
   <li class="seat">
          <input type="checkbox" id="4F" />
          <label for="4F">4F</label>
        </li>

   <li class="seat">
          <input type="checkbox" id="4G" />
          <label for="4G">4G</label>
        </li>
      
   <li class="seat">
          <input type="checkbox" id="4H" />
          <label for="4H">4H</label>
        </li>
      
   <li class="seat">
          <input type="checkbox" id="4I" />
          <label for="4I">4I</label>
        </li>
      
   <li class="seat">
          <input type="checkbox" id="4J" />
          <label for="4J">4J</label>
        </li>
      
      
   </ol>
    </li>
   
   <li class="row row--5">
  
   <ol class="seats" type="A">
       
   <li class="seat">
          <input type="checkbox" id="5A" />
          <label for="5A">5A</label>
        </li>
       
   <li class="seat">
          <input type="checkbox" id="5B" />
          <label for="5B">5B</label>
        </li>
        
   <li class="seat">
          <input type="checkbox" id="5C" />
          <label for="5C">5C</label>
        </li>
      
   <li class="seat">
          <input type="checkbox" id="5D" />
          <label for="5D">5D</label>
        </li>
      
   <li class="seat">
          <input type="checkbox" id="5E" />
          <label for="5E">5E</label>
        </li>
        
   <li class="seat">
          <input type="checkbox" id="5F" />
          <label for="5F">5F</label>
        </li>
   <li class="seat">
          <input type="checkbox" id="5G" />
          <label for="5G">5G</label>
        </li>
 
   <li class="seat">
          <input type="checkbox" id="5H" />
          <label for="5H">5H</label>
        </li>
 
   <li class="seat">
          <input type="checkbox" id="5I" />
          <label for="5I">5I</label>
        </li>
 
   <li class="seat">
          <input type="checkbox" id="5J" />
          <label for="5J">5J</label>
        </li>
 
      
   </ol>
    </li>
  


   <li class="row row--6">
     
   <ol class="seats" type="A">
       
   <li class="seat">
          <input type="checkbox" id="6A" />
          <label for="6A">6A</label>
        </li>
        
   <li class="seat">
          <input type="checkbox" id="6B" />
          <label for="6B">6B</label>
        </li>
        
   <li class="seat">
          <input type="checkbox" id="6C" />
          <label for="6C">6C</label>
        </li>
       
   <li class="seat">
          <input type="checkbox" id="6D" />
          <label for="6D">6D</label>
        </li>
      
   <li class="seat">
          <input type="checkbox" id="6E" />
          <label for="6E">6E</label>
        </li>
       
   <li class="seat">
          <input type="checkbox" id="6F" />
          <label for="6F">6F</label>
        </li>

   <li class="seat">
          <input type="checkbox" id="6G" />
          <label for="6G">6G</label>
        </li>
   
   <li class="seat">
          <input type="checkbox" id="6H" />
          <label for="6H">6H</label>
        </li>
   
   <li class="seat">
          <input type="checkbox" id="6I" />
          <label for="6I">6I</label>
        </li>
   
   <li class="seat">
          <input type="checkbox" id="6J" />
          <label for="6J">6J</label>
        </li>
      
</ol>
    </li>
  
  
<BR><HR>
<center> <i>Premium</i></center>

     
   <li class="row row--7">
     
   <ol class="seats" type="A">
        
   <li class="seat">
          <input type="checkbox" id="7A" />
          <label for="7A">7A</label>
        </li>
       
   <li class="seat">
          <input type="checkbox" id="7B" />
          <label for="7B">7B</label>
        </li>
  
   <li class="seat">
          <input type="checkbox" id="7C" />
          <label for="7C">7C</label>
        </li>
       
   <li class="seat">
          <input type="checkbox" id="7D" />
          <label for="7D">7D</label>
        </li>
       
   <li class="seat">
          <input type="checkbox" id="7E" />
          <label for="7E">7E</label>
        </li>
  
   <li class="seat">
          <input type="checkbox" id="7F" />
          <label for="7F">7F</label>
        </li>
   
   <li class="seat">
          <input type="checkbox" id="7G" />
          <label for="7G">7G</label>
        </li>
 
   <li class="seat">
          <input type="checkbox" id="7H" />
          <label for="7H">7H</label>
        </li>
 
   <li class="seat">
          <input type="checkbox" id="7I" />
          <label for="7I">7I</label>
        </li>
 
   <li class="seat">
          <input type="checkbox" id="7J" />
          <label for="7J">7J</label>
        </li>
   
   </ol>
    </li>
    
   <li class="row row--8">
    
   <ol class="seats" type="A">
       
   <li class="seat">
          <input type="checkbox" id="8A" />
          <label for="8A">8A</label>
        </li>
      
   <li class="seat">
          <input type="checkbox" id="8B" />
          <label for="8B">8B</label>
        </li>
      
   <li class="seat">
          <input type="checkbox" id="8C" />
          <label for="8C">8C</label>
        </li>
      
   <li class="seat">
          <input type="checkbox" id="8D" />
          <label for="8D">8D</label>
        </li>
       
   <li class="seat">
          <input type="checkbox" id="8E" />
          <label for="8E">8E</label>
        </li>
    
   <li class="seat">
          <input type="checkbox" id="8F" />
          <label for="8F">8F</label>
        </li>
 
   <li class="seat">
          <input type="checkbox" id="8G" />
          <label for="8G">8G</label>
        </li>

   <li class="seat">
          <input type="checkbox" id="8H" />
          <label for="8H">8H</label>
        </li>

   <li class="seat">
          <input type="checkbox" id="8I" />
          <label for="8I">8I</label>
        </li>

   <li class="seat">
          <input type="checkbox" id="8J" />
          <label for="8J">8J</label>
        </li>
    
   </ol>
    </li>
    
   <li class="row row--9">
    
   <ol class="seats" type="A">
        
   <li class="seat">
          <input type="checkbox" id="9A" />
          <label for="9A">9A</label>
        </li>
      
   <li class="seat">
          <input type="checkbox" id="9B" />
          <label for="9B">9B</label>
        </li>
     
   <li class="seat">
          <input type="checkbox" id="9C" />
          <label for="9C">9C</label>
        </li>
      
   <li class="seat">
          <input type="checkbox" id="9D" />
          <label for="9D">9D</label>
        </li>
      
   <li class="seat">
          <input type="checkbox" id="9E" />
          <label for="9E">9E</label>
        </li>
      
   <li class="seat">
          <input type="checkbox" id="9F" />
          <label for="9F">9F</label>
        </li>
  
   <li class="seat">
          <input type="checkbox" id="9G" />
          <label for="9G">9G</label>
        </li>
   
   <li class="seat">
          <input type="checkbox" id="9H" />
          <label for="9H">9H</label>
        </li>
   
   <li class="seat">
          <input type="checkbox" id="9I" />
          <label for="9I">9I</label>
        </li>
   
   <li class="seat">
          <input type="checkbox" id="9J" />
          <label for="9J">9J</label>
        </li>
    
   </ol>
    </li>
  
   

 </ol>
 
  <div class="exit exit--back fuselage">
    
 
 </div>
</div>
 

</body>
</html>