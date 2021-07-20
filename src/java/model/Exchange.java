/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import java.sql.Date;
import java.text.SimpleDateFormat;

/**
 *
 * @author ADMIN
 */
public class Exchange {
    private int exchangeID;
    private Date postExchangeDate;
    private int firstPostID, secondPostID;
    private int exchangeState;
    private final  SimpleDateFormat ft = new SimpleDateFormat ("dd-MM-yyyy  hh:mm  a");

    public Exchange() {
    }

    public Exchange(int exchangeID, Date postExchangeDate, int firstPostID, int secondPostID, int exchangeState) {
        this.exchangeID = exchangeID;
        this.postExchangeDate = postExchangeDate;
        this.firstPostID = firstPostID;
        this.secondPostID = secondPostID;
        this.exchangeState = exchangeState;
    }
    
    
    public Exchange(int exchangeID, Date postExchangeDate, int firstPostID, int secondPostID) {
        this.exchangeID = exchangeID;
        this.postExchangeDate = postExchangeDate;
        this.firstPostID = firstPostID;
        this.secondPostID = secondPostID;
    }

    public int getExchangeID() {
        return exchangeID;
    }

    public void setExchangeID(int exchangeID) {
        this.exchangeID = exchangeID;
    }

    public String getPostExchangeDate() {
        return ft.format(postExchangeDate);
    }

    public void setPostExchangeDate(Date postExchangeDate) {
        this.postExchangeDate = postExchangeDate;
    }

    public int getFirstPostID() {
        return firstPostID;
    }

    public void setFirstPostID(int firstPostID) {
        this.firstPostID = firstPostID;
    }

    public int getSecondPostID() {
        return secondPostID;
    }

    public void setSecondPostID(int secondPostID) {
        this.secondPostID = secondPostID;
    }

    public int getExchangeState() {
        return exchangeState;
    }

    public void setExchangeState(int exchangeState) {
        this.exchangeState = exchangeState;
    }

    @Override
    public String toString() {
        return "Exchange{" + "exchangeID=" + exchangeID + ", postExchangeDate=" + postExchangeDate + ", firstPostID=" + firstPostID + ", secondPostID=" + secondPostID + ", ft=" + ft + '}';
    }

    
    
    
    
}
