/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package edu.business;

import java.io.Serializable;

/**
 *
 * @author Elena
 */
public class User implements Serializable {

    private String investAmount;
    private String yearlyRate;
    private String numYears;
    private int futureValue;

    public User() {
        investAmount = "";
        yearlyRate = "";
        numYears = "";
        futureValue= 0;
    }

    public User(String investAmount, String yearlyRate, String numYears, int futureValue) {
        this.investAmount = investAmount;
        this.yearlyRate = yearlyRate;
        this.numYears = numYears;
        this.futureValue = futureValue;
    }

    public String getInvestAmount() {
        return investAmount;
    }

    public void setInvestAmount(String investAmount) {
        this.investAmount = investAmount;
    }

    public String getYearlyRate() {
        return yearlyRate;
    }

    public void setYearlyRate(String yearlyRate) {
        this.yearlyRate = yearlyRate;
    }

    public String getNumYears() {
        return numYears;
    }

    public void setNumYears(String numYears) {
        this.numYears = numYears;
    }
    
    public void setFutureValue(int futureValue){
        this.futureValue = futureValue;
    }
    
     public int getFutureValue(int futureValue){
        return futureValue;
    }
}
