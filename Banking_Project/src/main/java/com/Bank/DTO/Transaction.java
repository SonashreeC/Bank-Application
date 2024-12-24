package com.Bank.DTO;

import java.sql.Date;

public class Transaction {
	private long train_id;
	private long user;
	private long rec_acc;
	private Date date;
	private String transaction;
	private double amount;
	private double balance;
	public Transaction()
	{
		
	}
	public Transaction(long train_id, long user, long rec_acc, Date date, String transaction, double amount,
			double balance) {
		super();
		this.train_id = train_id;
		this.user = user;
		this.rec_acc = rec_acc;
		this.date = date;
		this.transaction = transaction;
		this.amount = amount;
		this.balance = balance;
	}
	public long getTrain_id() {
		return train_id;
	}
	public void setTrain_id(long train_id) {
		this.train_id = train_id;
	}
	public long getUser() {
		return user;
	}
	public void setUser(long user) {
		this.user = user;
	}
	public long getRec_acc() {
		return rec_acc;
	}
	public void setRec_acc(long rec_acc) {
		this.rec_acc = rec_acc;
	}
	public Date getDate() {
		return date;
	}
	public void setDate(Date date) {
		this.date = date;
	}
	public String getTransaction() {
		return transaction;
	}
	public void setTransaction(String transaction) {
		this.transaction = transaction;
	}
	public double getAmount() {
		return amount;
	}
	public void setAmount(double amount) {
		this.amount = amount;
	}
	public double getBalance() {
		return balance;
	}
	public void setBalance(double balance) {
		this.balance = balance;
	}
	@Override
	public String toString() {
		return "Transaction [train_id=" + train_id + ", user=" + user + ", rec_acc=" + rec_acc + ", date="
				+ date + ", transaction=" + transaction + ", amount=" + amount + ", balance=" + balance + "]";
	}
	
	
	
	
	

}
