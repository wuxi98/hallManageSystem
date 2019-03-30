package com.nchu.entity;

public class SystemManager {
    private String saId;
    private String saName;
    private String saPassword;

    public String getSaManagerId() {
        return saId;
    }

    public void setSaManagerId(String saManagerId) {
        saId = saManagerId;
    }

    public String getSaManagerName() {
        return saName;
    }

    public void setSaManagerName(String saManagerName) {
        saName = saManagerName;
    }

    public String getSaManagerPassword() {
        return saPassword;
    }

    public void setSaManagerPassword(String saManagerPassword) {
        saPassword = saManagerPassword;
    }

    @Override
    public String toString() {
        return "SystemManager{" +
                "saId='" + saId + '\'' +
                ", saName='" + saName + '\'' +
                ", saPassword='" + saPassword + '\'' +
                '}';
    }
}

