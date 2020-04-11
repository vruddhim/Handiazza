<%-- 
    Document   : registerstudent
    Created on : 2 Feb, 2018, 8:58:51 PM
    Author     : vruddhi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="com.sun.xml.internal.bind.CycleRecoverable.Context"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.*"%>
<%@page import="java.io.*"%>
<%@page import="java.io.File"%>
<%@page import="java.io.FileInputStream"%>
<%@page import="java.io.InputStream" %>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@page import="javax.servlet.annotation.MultipartConfig"%>
<%@ page import = "java.io.*,java.util.*, javax.servlet.*" %>
<%@ page import = "javax.servlet.http.*" %>
<%@ page import = "org.apache.commons.fileupload.*" %>
<%@ page import = "org.apache.commons.fileupload.disk.*" %>
<%@ page import = "org.apache.commons.fileupload.servlet.*" %>
<%@ page import = "org.apache.commons.io.output.*" %>


<!DOCTYPE html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Register student</title>
</head>


<%
    File file;
    int j = 0;
    String fileName = " ";
    String fieldName = " ";
    String formdata[] = new String[15];
    int maxFileSize = 5000 * 1024;
    int maxMemSize = 5000 * 1024;
    ServletContext context = pageContext.getServletContext();
    String filePath = context.getInitParameter("file-upload");
    FileItemFactory factory1 = new DiskFileItemFactory();
    ServletFileUpload upload1 = new ServletFileUpload(factory1);
    List<FileItem> uploadItems = upload1.parseRequest(request);
    // Verify the content type
    String contentType = request.getContentType();

    if ((contentType.indexOf("multipart/form-data") >= 0)) {
        DiskFileItemFactory factory = new DiskFileItemFactory();
        // maximum size that will be stored in memory
        factory.setSizeThreshold(maxMemSize);

        // Location to save data that is larger than maxMemSize.
        factory.setRepository(new File("c:\\mytemp"));

        // Create a new file upload handler
        ServletFileUpload upload = new ServletFileUpload(factory);

        // maximum file size to be uploaded.
        upload.setSizeMax(maxFileSize);

        for (FileItem uploadItem : uploadItems) {
            if (uploadItem.isFormField()) {
                fieldName = uploadItem.getFieldName();
                formdata[j] = uploadItem.getString();

            } else if (!uploadItem.isFormField()) {
                fieldName = uploadItem.getFieldName();
                fileName = uploadItem.getName();
                boolean isInMemory = uploadItem.isInMemory();
                long sizeInBytes = uploadItem.getSize();

                // Write the file
                if (fileName.lastIndexOf("\\") >= 0) {
                    file = new File(filePath
                            + fileName.substring(fileName.lastIndexOf("\\")));
                } else {
                    file = new File(filePath
                            + fileName.substring(fileName.lastIndexOf("\\") + 1));
                }
                uploadItem.write(file);
                formdata[j] = fileName;

            }
            j++;
        }

        try {
            // Parse the request to get file items.
            List fileItems = upload.parseRequest(request);

            // Process the uploaded file items
            Iterator i = fileItems.iterator();

            while (i.hasNext()) {
                FileItem fi = (FileItem) i.next();
                if (!fi.isFormField()) {
                    // Get the uploaded file parameters

                } else {

                }

            }

        } catch (Exception ex) {
            System.out.println(ex);
        }
    } else {
        out.println("<html>");
        out.println("<head>");
        out.println("<title>Servlet upload</title>");
        out.println("</head>");
        out.println("<body>");
        out.println("<p>No file uploaded</p>");
        out.println("</body>");
        out.println("</html>");
    }

    Class.forName("com.mysql.jdbc.Driver");

    SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd");

    Connection c = DriverManager.getConnection("jdbc:mysql://localhost:3306/handiazza", "root", "root");
    PreparedStatement ps = c.prepareStatement("insert into login values(?,?)");
    ps.setString(1, formdata[3]);
    ps.setString(2, formdata[4]);
    ps.executeUpdate();

    Date date = formatter.parse(formdata[9]);
    java.sql.Date sqlDate = new java.sql.Date(date.getTime());

    ps = c.prepareStatement("insert into personal_details values(?,?,?,?,?,?,?,?,?)");
    ps.setLong(1, Long.parseLong(formdata[2]));
    ps.setString(2, formdata[0]);
    ps.setString(3, formdata[1]);
    ps.setString(4, formdata[6]);
    ps.setLong(5, Long.parseLong(formdata[7]));
    ps.setString(6, formdata[8]);
    ps.setDate(7, sqlDate);
    ps.setString(8, fileName);
    ps.setString(9, formdata[3]);
    ps.executeUpdate();
    response.sendRedirect("profile_details.jsp");


%>

