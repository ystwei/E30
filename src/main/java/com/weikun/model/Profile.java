package com.weikun.model;

public class Profile {
    private String username;

    private String lang;
    private Category category;
    private String catid;

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username == null ? null : username.trim();
    }


    public String getCatid() {
        return catid;
    }

    public void setCatid(String catid) {
        this.catid = catid == null ? null : catid.trim();
    }

    public Category getCategory() {
        return category;
    }

    public void setCategory(Category category) {
        this.category = category;
    }

    public String getLang() {
        return lang;
    }

    public void setLang(String lang) {
        this.lang = lang;
    }
}