<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Insert</title>
    </head>
    <body style="background-color: #B7C5A7;">
         <form method="post" action="Insertothersjava" enctype="multipart/form-data">
            <center>
            <table border="1" width="30%" cellpadding="3">
                <thead>
                    <tr>
                        <th colspan="2">Insert Here</th>
                    </tr>
                </thead>
                <tbody>
                <tr>
                      
                        <td>Name</td>
                        <td><input type="text" name="name" value="" /></td>
                    </tr>
                   <tr>
                      <td>Price</td>
                        <td><input type="text" name="price" value="" /></td>
                    </tr>
                      <tr>
                      
                        <td>Image</td>
                        <td><input type="file" name="image" value="" /></td>
                    </tr>
                   
                    <tr>
                        <td><input type="submit" value="Submit" /></td>
                        <td><input type="reset" value="Reset" /> <a href="index.html">Logout</a></td>
                        
                    </tr>
                    
                </tbody>
            </table>
            </center>
        </form>
    </body>
</html>