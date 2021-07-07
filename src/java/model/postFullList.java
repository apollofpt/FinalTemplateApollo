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
    private String title;
    private String date;
    private String description;
    private int like;
    private String thumbnail;
    private String username;
    private String avatar;

    public postFullList() {
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

    @Override
    public String toString() {
        return "postFullList{" + "title=" + title + ", date=" + date + ", description=" + description + ", like=" + like + ", thumbnail=" + thumbnail + ", username=" + username + ", avatar=" + avatar + '}';
    }
    
    
}
