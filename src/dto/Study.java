package dto;

public class Study {
    private String studyId;
    private String studyName;
    private String studyInfo;
    private String studyCategory;
    private String studyStartDate;
    private String studyEndDate;
    private int maxParticipant;
    private String studyFileName;

    public Study(String studyId, String studyName, String studyCategory, String studyStartDate, String studytEndDate, int maxParticipant, String studyFileName, String studyInfo) {
    }
        public String getStudyId() {
        return studyId;
    }

    public void setStudyId(String studyId) {
        this.studyId = studyId;
    }

    public String getStudyName() {
        return studyName;
    }

    public void setStudyName(String studyName) {
        this.studyName = studyName;
    }

    public String getStudyInfo() {
        return studyInfo;
    }

    public void setStudyInfo(String studyInfo) {
        this.studyInfo = studyInfo;
    }

    public String getStudyCategory() {
        return studyCategory;
    }

    public void setStudyCategory(String studyCategory) {
        this.studyCategory = studyCategory;
    }

    public String getStudyStartDate() {
        return studyStartDate;
    }

    public void setStudyStartDate(String studyStartDate) {
        this.studyStartDate = studyStartDate;
    }

    public String getStudyEndDate() {
        return studyEndDate;
    }

    public void setStudyEndDate(String studyEndDate) {
        this.studyEndDate = studyEndDate;
    }

    public int getMaxParticipant() {
        return maxParticipant;
    }

    public void setMaxParticipant(int maxParticipant) {
        this.maxParticipant = maxParticipant;
    }

    public String getStudyFileName() {
        return studyFileName;
    }

    public void setStudyFileName(String studyFileName) {
        this.studyFileName = studyFileName;
    }
}
