/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

/**
 *
 * @author LENOVO
 */
public class Application {
    private int AId;
    private String Agency_handling;
    private String Attach_document;
    private String Sender;
    private java.sql.Timestamp Timestamp; // Đảm bảo sử dụng java.sql.Timestamp
    private int MOEId;
    private int UId;

    public Application() {
    }

    // Constructor
    public Application(int AId, String Agency_handling, String Attach_document, java.sql.Timestamp Timestamp, String Sender, int MOEId, int UId) {
        this.AId = AId;
        this.Agency_handling = Agency_handling;
        this.Attach_document = Attach_document;
        this.Timestamp = Timestamp;
        this.Sender = Sender;
        this.MOEId = MOEId;
        this.UId = UId;
    }

    // Getters and setters
    public int getAId() {
        return AId;
    }

    public void setAId(int AId) {
        this.AId = AId;
    }

    public String getAgency_handling() {
        return Agency_handling;
    }

    public void setAgency_handling(String Agency_handling) {
        this.Agency_handling = Agency_handling;
    }

    public String getAttach_document() {
        return Attach_document;
    }

    public void setAttach_document(String Attach_document) {
        this.Attach_document = Attach_document;
    }

    public String getSender() {
        return Sender;
    }

    public void setSender(String Sender) {
        this.Sender = Sender;
    }

    public java.sql.Timestamp getTimestamp() {
        return Timestamp;
    }

    public void setTimestamp(java.sql.Timestamp Timestamp) {
        this.Timestamp = Timestamp;
    }

    public int getMOEId() {
        return MOEId;
    }

    public void setMOEId(int MOEId) {
        this.MOEId = MOEId;
    }

    public int getUId() {
        return UId;
    }

    public void setUId(int UId) {
        this.UId = UId;
    }
}
