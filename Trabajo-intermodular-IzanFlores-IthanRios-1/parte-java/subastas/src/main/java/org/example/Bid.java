package org.example;

public class Bid {
    private String username;
    private double amount;

    public Bid(String username, double amount) {
        this.username = username;
        this.amount = amount;
    }

    public String getUsername() {
        return username;
    }

    public double getAmount() {
        return amount;
    }
}
