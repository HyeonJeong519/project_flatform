package dao;
import dto.Study;
import util.DatabaseUtil;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class StudyRepository {
    Connection connection = DatabaseUtil.getConnection();

    private ArrayList<Study> listofProject = new ArrayList<Study>();

    private static StudyRepository instance = new StudyRepository();

    public static StudyRepository getInstance(){
        return instance;
    }
    public StudyRepository(){

    }
    public Study getStudyById(String studyId){
        int rt = 0;
        Connection conn = null;
        PreparedStatement pstmt = null;
        ResultSet rs = null;
        Study study = null;

        String query = "SELECT * FROM STUDY WHERE ID = ?";

        try {
            conn = DatabaseUtil.getConnection();

            if (conn == null)
                return study;
            pstmt = conn.prepareStatement(query);
            pstmt.setString(1, studyId);
            rs = pstmt.executeQuery();
            if (rs.next()) {
                study = new Study(rs.getString("studyId"),
                        rs.getString("studyName"),
                        rs.getString("studyCategory"),
                        rs.getString("studyStartDate"),
                        rs.getString("studyEndDate"),
                        rs.getInt("maxParticipant"),
                        rs.getString("studyFileName"),
                        rs.getString("studyInfo"));
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
        return study;
    }
    public int addStudy(String studyId, String studyName, String studyCategory, String studyStartDate,
                          String studyEndDate, int maxParticipant,String studyFileName, String studyInfo){
        String SQL = "INSERT INTO STUDY VALUES (?,?,?,?,?,?,?,?)";
        try {
            // ????????? ???????????? ????????? ????????????.
            PreparedStatement preparedStatement = connection.prepareStatement(SQL);

            // ???????????? ??????? ????????? ???????????? ????????????.
            preparedStatement.setString(1, studyId);
            preparedStatement.setString(2, studyName);
            preparedStatement.setString(3, studyCategory);
            preparedStatement.setString(4, studyStartDate);
            preparedStatement.setString(5, studyEndDate);
            preparedStatement.setInt(6, maxParticipant);
            preparedStatement.setString(7, studyFileName);
            preparedStatement.setString(8, studyInfo);

            // ???????????? ????????? ?????? ??????, ?????????: insert??? ??? ???????????? ??????
            return preparedStatement.executeUpdate();

        } catch (Exception e) {
            e.printStackTrace();
        }
        return -1;
    }
}
