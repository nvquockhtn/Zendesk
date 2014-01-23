package com.zendesk.bll;

import com.amazonaws.services.dynamodbv2.datamodeling.DynamoDBMapper;

import info.androidhive.actionbar.model.Account;

public class AccountBUS {

	public static Account getAccountByEmail() {
		return null;
	}

	public static Account getAccountById(int id) {
		DynamoDBMapper mapper = DynamoDBManager.mapper;

		Account account = mapper.load(Account.class, id);

		return account;

	}
}
