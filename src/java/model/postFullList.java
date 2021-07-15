/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import java.sql.Date;

/**
 *
 * @author acer
 */
public class postFullList {
  private int postid;
    private int accountid;
    private String title;
    private String date;
    private String description;
    private int like;
    private String thumbnail;
    private String username;
    private String avatar;
    private int cid;
    private String cname;

    public postFullList() {
    }

    public postFullList(int postid, int accountid, String title, String date, String description, int like, String thumbnail, String username, String avatar) {
        this.postid = postid;
        this.accountid = accountid;
        this.title = title;
        this.date = date;
        this.description = description;
        this.like = like;
        this.thumbnail = thumbnail;
        this.username = username;
        this.avatar = avatar;
    }

    public postFullList(int postid, int accountid, String title, String date, String description, int like, String thumbnail, String username, String avatar, int cid, String cname) {
        this.postid = postid;
        this.accountid = accountid;
        this.title = title;
        this.date = date;
        this.description = description;
        this.like = like;
        this.thumbnail = thumbnail;
        this.username = username;
        this.avatar = avatar;
        this.cid = cid;
        this.cname = cname;
    }

    public postFullList(int postid, int like, String title, String date, String thumbnail) {
        this.postid = postid;
        this.like = like;
        this.title = title;
        this.date = date;
        this.thumbnail = thumbnail;
    }

    public postFullList(String title, String date, String description, int like, String thumbnail, String username, String avatar) {
        this.title = title;
        this.date = date;
        this.description = description;
        this.like = like;
        this.thumbnail = thumbnail;
        this.username = username;
        this.avatar = avatar;
    }
    
    public postFullList(int postid,String title, String date, String description, int like, String thumbnail, String username, String avatar) {
        this.postid = postid;
        this.title = title;
        this.date = date;
        this.description = description;
        this.like = like;
        this.thumbnail = thumbnail;
        this.username = username;
        this.avatar = avatar;
    }

    public int getPostid() {
        return postid;
    }

    public void setPostid(int postid) {
        this.postid = postid;
    }

    public int getAccountid() {
        return accountid;
    }

    public void setAccountid(int accountid) {
        this.accountid = accountid;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getDate() {
        return date;
    }

    public void setDate(String date) {
        this.date = date;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public int getLike() {
        return like;
    }

    public void setLike(int like) {
        this.like = like;
    }

    public String getThumbnail() {
        return thumbnail;
    }

    public void setThumbnail(String thumbnail) {
        this.thumbnail = thumbnail;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getAvatar() {
        return avatar;
    }

    public void setAvatar(String avatar) {
        this.avatar = avatar;
    }

    public int getCid() {
        return cid;
    }

    public void setCid(int cid) {
        this.cid = cid;
    }

    public String getCname() {
        return cname;
    }

    public void setCname(String cname) {
        this.cname = cname;
    }

    @Override
    public String toString() {
        return "postFullList{" + "postid=" + postid + ", accountid=" + accountid + ", title=" + title + ", date=" + date + ", description=" + description + ", like=" + like + ", thumbnail=" + thumbnail + ", username=" + username + ", avatar=" + avatar + ", cid=" + cid + ", cname=" + cname + '}';
    }

    
}
