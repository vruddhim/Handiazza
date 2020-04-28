<%-- 
    Document   : fuzzy
    Created on : 16 Mar, 2018, 3:33:50 PM
    Author     : yashs
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.*"%>
<%@page import="fuzzy4j.flc.ControllerBuilder" %>
<%@page import="fuzzy4j.flc.FLC"%>
<%@page import="fuzzy4j.flc.InputInstance"%>
<%@page import="fuzzy4j.flc.Term"%>
<%@page import="static fuzzy4j.flc.Term.term"%>
<%@page import="fuzzy4j.flc.Variable"%>
<%@page import="static fuzzy4j.flc.Variable.input"%>
<%@page import="static fuzzy4j.flc.Variable.output"%>
<%@page import="fuzzy4j.flc.defuzzify.Bisector"%>
<%@page import="java.util.Map"%>
<%@page import="java.util.*"%>



<%
    double s;
    Map<Variable, Double> crisp = null;
    Term t1 = term("me", 0, 5, 10);
    Term t2 = term("vhe", 0, 10, 20);
    Term t3 = term("he", 10, 20, 30);
    Term t4 = term("ve", 20, 30, 40);
    Term t5 = term("e", 30, 40, 50);
    Term t6 = term("m", 40, 50, 60);
    Term t7 = term("le", 50, 60, 70);
    Term t8 = term("vle", 60, 70, 80);
    Term t9 = term("hle", 70, 80, 90);
    Term t10 = term("vhe", 80, 90, 100);
    Term t11 = term("le", 90, 95, 100);

    Variable diff = input("diff", t1, t2, t3, t4, t5, t6, t7, t8, t9, t10, t11).start(0).end(100);
    Term to1 = term("ome", 90, 95, 100);
    Term to2 = term("ovhe", 80, 90, 100);
    Term to3 = term("ohe", 70, 80, 90);
    Term to4 = term("ove", 60, 70, 80);
    Term to5 = term("oe", 50, 60, 70);
    Term to6 = term("om", 40, 50, 60);
    Term to7 = term("ole", 30, 40, 50);
    Term to8 = term("ovle", 20, 30, 40);
    Term to9 = term("ohle", 10, 20, 30);
    Term to10 = term("ovhe", 0, 10, 20);
    Term to11 = term("ole", 0, 5, 10);

    Variable per = output("per", to1, to2, to3, to4, to5, to6, to7, to8, to9, to10, to11).start(0).end(100);

    FLC impl;
    impl = ControllerBuilder.newBuilder()
            .when().var(diff).is(t1).then().var(per).is(to1)
            .when().var(diff).is(t2).then().var(per).is(to2)
            .when().var(diff).is(t3).then().var(per).is(to3)
            .when().var(diff).is(t4).then().var(per).is(to4)
            .when().var(diff).is(t5).then().var(per).is(to5)
            .when().var(diff).is(t6).then().var(per).is(to6)
            .when().var(diff).is(t7).then().var(per).is(to7)
            .when().var(diff).is(t8).then().var(per).is(to8)
            .when().var(diff).is(t9).then().var(per).is(to9)
            .when().var(diff).is(t10).then().var(per).is(to10)
            .when().var(diff).is(t11).then().var(per).is(to11)
            .defuzzifier(new Bisector())
            .create();

    String jobid = request.getParameter("jid");

    Class.forName("com.mysql.jdbc.Driver");
    float countin = 5, match = 0, perdiff;
    String b = " ";
    Long sid;
    Connection c = DriverManager.getConnection("jdbc:mysql://localhost:3306/handiazza", "root", "root");
    PreparedStatement ps = c.prepareStatement("Select * from achievement_req where jobid=?");
    ps.setInt(1, Integer.parseInt(jobid));
    ResultSet rs;
    rs = ps.executeQuery();
    while (rs.next()) {
        countin = countin + 1;
    }

    ps = c.prepareStatement("Select * from interests_req where jobid=?");
    ps.setInt(1, Integer.parseInt(jobid));
    rs = ps.executeQuery();
    while (rs.next()) {
        countin = countin + 1;
    }
    ps = c.prepareStatement("Select * from skills_req where jobid=?");
    ps.setInt(1, Integer.parseInt(jobid));
    rs = ps.executeQuery();
    while (rs.next()) {
        countin = countin + 1;
    }
    ps = c.prepareStatement("Select * from education_req where jobid=?");
    ps.setInt(1, Integer.parseInt(jobid));
    rs = ps.executeQuery();
    if (rs.next()) {
        b = rs.getString("branch");
    }

    PreparedStatement p = c.prepareStatement("select *from education where branch=?");
    p.setString(1, b);
    ResultSet rs1 = p.executeQuery();

    while (rs1.next()) {
        ps = c.prepareStatement("Select * from education_req where jobid=?");
        ps.setInt(1, Integer.parseInt(jobid));
        rs = ps.executeQuery();
        if (rs.next()) {
            if (rs1.getInt("tenth_score") >= rs.getInt("tenth_score")) {
                match += 1;
            }
            if (rs1.getInt("avg_score") >= rs.getInt("avg_score")) {
                match = match + 1;
            }
            if (rs1.getInt("semester") >= rs.getInt("semester")) {
                match = match + 1;
            }
            if (rs1.getString("branch").equals(rs.getString("branch"))) {
                match = match + 1;
            }
            if (rs1.getInt("work_duration") > rs.getInt("work_duration")) {
                match = match + 1;
            } else {
                match = match + ((float) rs1.getInt("work_duration") / rs.getInt("work_duration"));
            }

        }

        sid = rs1.getLong("sap_id");
        PreparedStatement p2 = c.prepareStatement("select *from achievement where sap_id=?");
        p2.setLong(1, sid);
        ResultSet rs2 = p2.executeQuery();
        PreparedStatement p3;

        ResultSet rs3;
        while (rs2.next()) {
            p3 = c.prepareStatement("select *from achievement_req where jobid=?");
            p3.setInt(1, Integer.parseInt(jobid));
            rs3 = p3.executeQuery();
            while (rs3.next()) {
                if (rs2.getString("description").equals(rs3.getString("description"))) {
                    match = match + 1;
                }
            }
        }
        p2 = c.prepareStatement("select *from interests where sap_id=?");
        p2.setLong(1, sid);
        rs2 = p2.executeQuery();

        while (rs2.next()) {
            p3 = c.prepareStatement("select *from interests_req where jobid=?");
            p3.setInt(1, Integer.parseInt(jobid));
            rs3 = p3.executeQuery();
            while (rs3.next()) {
                if (rs2.getString("description").equals(rs3.getString("description"))) {
                    match = match + 1;
                }
            }
        }
        p2 = c.prepareStatement("select *from skills where sap_id=?");
        p2.setLong(1, sid);
        rs2 = p2.executeQuery();

        while (rs2.next()) {
            p3 = c.prepareStatement("select *from skills_req where jobid=?");
            p3.setInt(1, Integer.parseInt(jobid));
            rs3 = p3.executeQuery();
            while (rs3.next()) {
                if (rs2.getString("description").equals(rs3.getString("description"))) {
                    match = match + 1;
                }
            }
        }

        perdiff = ((countin - match) / countin) * 100;
        match = 0;

        InputInstance instance = new InputInstance().is(diff, perdiff);

        crisp = impl.apply(instance);
        s = crisp.values().iterator().next();
        p2 = c.prepareStatement("insert into filtered_students(sap_id,job_id,percentage)values(?,?,?)");
        p2.setLong(1, sid);
        p2.setInt(2, Integer.parseInt(jobid));
        p2.setDouble(3, s);
        p2.executeUpdate();
    }
    response.sendRedirect("recruitor_home.jsp");
%>

