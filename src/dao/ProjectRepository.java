package dao;

import dto.Project;
import util.DatabaseUtil;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
public class ProjectRepository {
    Connection connection = DatabaseUtil.getConnection();

    private ArrayList<Project> listofProject = new ArrayList<Project>();

    private static ProjectRepository instance = new ProjectRepository();

    public static ProjectRepository getInstance(){
        return instance;
    }
    public ProjectRepository(){

    }
    public Project getProjectById(String projectId){
        int rt = 0;
        Connection conn = null;
        PreparedStatement pstmt = null;
        ResultSet rs = null;
        Project project = null;

        String query = "SELECT * FROM PROJECT WHERE ID = ?";

        try {
            conn = DatabaseUtil.getConnection();

            if (conn == null)
                return project;
            pstmt = conn.prepareStatement(query);
            pstmt.setString(1, projectId);
            rs = pstmt.executeQuery();
            if (rs.next()) {
                project = new Project(rs.getString("projectId"),
                        rs.getString("projectName"),
                        rs.getString("projectCategory"),
                        rs.getString("projectStartDate"),
                        rs.getString("projectEndDate"),
                        rs.getInt("maxParticipant"),
                        rs.getString("userId"),
                        rs.getString("fileName"),
                        rs.getString("projectInfo"));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            try {
                if (rs != null) rs.close();
                if (pstmt != null) pstmt.close();
                if (conn != null) conn.close();
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        return project;
    }
    public int addProject(String projectId, String projectName, String projectCategory, String projectStartDate,
                          String projectEndDate, int maxParticipant, String userId, String fileName, String projectInfo){
        String SQL = "INSERT INTO PROJECT VALUES (?,?,?,?,?,?,?,?,?)";
        try {
            // ????????? ???????????? ????????? ????????????.
            PreparedStatement preparedStatement = connection.prepareStatement(SQL);

            // ???????????? ??????? ????????? ???????????? ????????????.
            preparedStatement.setString(1, projectId);
            preparedStatement.setString(2, projectName);
            preparedStatement.setString(3, projectCategory);
            preparedStatement.setString(4, projectStartDate);
            preparedStatement.setString(5, projectEndDate);
            preparedStatement.setInt(6, maxParticipant);
            preparedStatement.setString(7, userId);
            preparedStatement.setString(8, fileName);
            preparedStatement.setString(9, projectInfo);

            // ???????????? ????????? ?????? ??????, ?????????: insert??? ??? ???????????? ??????
            return preparedStatement.executeUpdate();

        } catch (Exception e) {
            e.printStackTrace();
        }
        return -1;
    }
}