/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import java.sql.Date;

/**
 *
 * @author ADMIN
 */
public class Post {
    private int postID, accountID;
    private String postTitle;
    private Date postDate;
    private String postDescription;
    private int postLike;
    private String thumbnailURL;

    public Post() {
    }

    public Post(int postID, int accountID, String postTitle, Date postDate, String postDescription, int postLike, String thumbnailURL) {
        this.postID = postID;
        this.accountID = accountID;
        this.postTitle = postTitle;
        this.postDate = postDate;
        this.postDescription = postDescription;
        this.postLike = postLike;
        this.thumbnailURL = thumbnailURL;
    }

    public int getPostID() {
        return postID;
    }

    public void setPostID(int postID) {
        this.postID = postID;
    }

    public int getAccountID() {
        return accountID;
    }

    public void setAccountID(int accountID) {
        this.accountID = accountID;
    }

    public String getPostTitle() {
        return postTitle;
    }

    public void setPostTitle(String postTitle) {
        this.postTitle = postTitle;
    }

    public Date getPostDate() {
        return postDate;
    }

    public void setPostDate(Date postDate) {
        this.postDate = postDate;
    }

    public String getPostDescription() {
        return postDescription;
    }

    public void setPostDescription(String postDescription) {
        this.postDescription = postDescription;
    }

    public int getPostLike() {
        return postLike;
    }

    public void setPostLike(int postLike) {
        this.postLike = postLike;
    }

    public String getThumbnailURL() {
        return thumbnailURL;
    }

    public void setThumbnailURL(String thumbnailURL) {
        this.thumbnailURL = thumbnailURL;
    }

    @Override
    public String toString() {
        return "Post{" + "postID=" + postID + ", accountID=" + accountID + ", postTitle=" + postTitle + ", postDate=" + postDate + ", postDescription=" + postDescription + ", postLike=" + postLike + ", thumbnailURL=" + thumbnailURL + '}';
    }
    
    
}
