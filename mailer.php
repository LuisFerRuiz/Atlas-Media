<?php

    // Only process POST reqeusts.
    if ($_SERVER["REQUEST_METHOD"] == "POST") {
        // Get the form fields and remove whitespace.
        
        
        // Always set content-type when sending HTML email
        
        $name = strip_tags(trim($_POST["name"]));
        $name = str_replace(array("\r","\n"),array(" "," "),$name);
        $email = filter_var(trim($_POST["email"]), FILTER_SANITIZE_EMAIL);
        
        
       
        $message = trim($_POST["message"]);
        

        // Check that data was sent to the mailer.
        /*if ( empty($name) OR empty($message) OR !filter_var($email, FILTER_VALIDATE_EMAIL)) {
            // Set a 400 (bad request) response code and exit.
            http_response_code(400);
            echo "Oops! There was a problem with your submission. Please complete the form and try again.";
            exit;
        }*/

        // Set the recipient email address.
        // FIXME: Update this to your desired email address.
        //$recipient = "comunicacion@graziala.com";
        $recipient = "me@riqrdo.com";

        // Set the email subject.
        $subject = "Contacto Atlas Media";
        
        
        $email_content = '<table width="100%" border="0" cellspacing="0" cellpadding="8" style="font-family:Arial; font-size:12px; border:1px solid #e8e8e8; border-bottom:2px solid #999; box-shadow:5px 5px 8px #ccc; margin:25px auto 15px auto;">
  <tr>
    <td width="29%" height="20px" bgcolor="#000" style="border-bottom:2px solid #010a71; border-top:1px solid #ccc;"></td>
    <td width="71%" bgcolor="#000" style="border-bottom:2px solid #010a71; border-top:1px solid #ccc;">&nbsp;</td>
  </tr>
  <tr>
    <td align="right" bgcolor="#e8e8e8"><font face="Arial, Helvetica, sans-serif" size="-1"><strong>Nombre:</strong></font></td>
    <td style="border-bottom:1px solid #e8e8e8;"><font face="Arial, Helvetica, sans-serif" size="-1">'.$name.'</font></td>
  </tr>
  <tr>
    <td align="right" bgcolor="#e8e8e8"><font face="Arial, Helvetica, sans-serif" size="-1"><strong>Correo:</strong></font></td>
    <td style="border-bottom:1px solid #e8e8e8;"><font face="Arial, Helvetica, sans-serif" size="-1">'.$email.'</font></td>
  </tr>
  <tr>
    <td align="right" bgcolor="#e8e8e8"><font face="Arial, Helvetica, sans-serif" size="-1"><strong>Mensaje:</strong></font></td>
    <td style="border-bottom:1px solid #e8e8e8;"><font face="Arial, Helvetica, sans-serif" size="-1">'.$message.'</font></td>
  </tr>
</table>';
        
        

        $emailList = "no-reply@atlasmedia.com";
        $emailBcc = "ricardo.maresg@gmail.com";
        // Build the email headers.
        
        $email_headers = "MIME-Version: 1.0" . "\r\n";
        $email_headers .= "Content-type:text/html;charset=UTF-8" . "\r\n";
        $email_headers .= "From: $name <no-reply@atlasmedia.com>"."\r\n";
        $email_headers .= "Bcc: $emailBcc "."\r\n";
        

        // Send the email.
        if (mail($recipient, $subject, $email_content, $email_headers)) {
            // Set a 200 (okay) response code.
            http_response_code(200);
            echo "Thank You! Your message has been sent.";
        } else {
            // Set a 500 (internal server error) response code.
            http_response_code(500);
            echo "Oops! Something went wrong and we couldn't send your message.";
        }

    } else {
        // Not a POST request, set a 403 (forbidden) response code.
        http_response_code(403);
        echo "There was a problem with your submission, please try again.";
    }

?>