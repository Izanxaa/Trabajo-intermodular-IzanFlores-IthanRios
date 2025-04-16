package org.example;

public class Product {
    private String name;
    private double startingPrice;
    private Bid highestBid;

    public Product(String name, double startingPrice) {
        this.name = name;
        this.startingPrice = startingPrice;
        this.highestBid = null;
    }

    public String getName() {
        return name;
    }

    public double getStartingPrice() {
        return startingPrice;
    }

    public Bid getHighestBid() {
        return highestBid;
    }

    public void setHighestBid(Bid bid) {
        this.highestBid = bid;
    }
}
