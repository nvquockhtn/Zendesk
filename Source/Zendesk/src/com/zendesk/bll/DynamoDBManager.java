/*
 * Copyright 2010-2012 Amazon.com, Inc. or its affiliates. All Rights Reserved.
 *
 * Licensed under the Apache License, Version 2.0 (the "License").
 * You may not use this file except in compliance with the License.
 * A copy of the License is located at
 *
 *  http://aws.amazon.com/apache2.0
 * 
 * or in the "license" file accompanying this file. This file is distributed
 * on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either
 * express or implied. See the License for the specific language governing
 * permissions and limitations under the License.
 */

package com.zendesk.bll;

import info.androidhive.actionbar.PropertyLoader;
import info.androidhive.actionbar.model.Account;

import java.util.ArrayList;

import android.app.backup.SharedPreferencesBackupHelper;
import android.content.Context;
import android.content.SharedPreferences;

import com.amazonaws.AmazonServiceException;
import com.amazonaws.services.dynamodbv2.AmazonDynamoDBClient;
import com.amazonaws.services.dynamodbv2.datamodeling.DynamoDBAttribute;
import com.amazonaws.services.dynamodbv2.datamodeling.DynamoDBHashKey;
import com.amazonaws.services.dynamodbv2.datamodeling.DynamoDBMapper;
import com.amazonaws.services.dynamodbv2.datamodeling.DynamoDBScanExpression;
import com.amazonaws.services.dynamodbv2.datamodeling.DynamoDBTable;
import com.amazonaws.services.dynamodbv2.datamodeling.PaginatedScanList;
import com.amazonaws.services.dynamodbv2.model.AttributeDefinition;
import com.amazonaws.services.dynamodbv2.model.CreateTableRequest;
import com.amazonaws.services.dynamodbv2.model.DeleteTableRequest;
import com.amazonaws.services.dynamodbv2.model.DescribeTableRequest;
import com.amazonaws.services.dynamodbv2.model.DescribeTableResult;
import com.amazonaws.services.dynamodbv2.model.KeySchemaElement;
import com.amazonaws.services.dynamodbv2.model.KeyType;
import com.amazonaws.services.dynamodbv2.model.ProvisionedThroughput;
import com.amazonaws.services.dynamodbv2.model.ResourceNotFoundException;
import com.amazonaws.services.dynamodbv2.model.ScalarAttributeType;
import com.amazonaws.tvmclient.AmazonClientManager;

public class DynamoDBManager {

	public static AmazonClientManager clientManager = null;
	public static AmazonDynamoDBClient ddb = null;
	public static DynamoDBMapper mapper;

	/*
	 * Creates a table with the following attributes:
	 * 
	 * Table name: testTableName Hash key: userNo type N Read Capacity Units: 10
	 * Write Capacity Units: 5
	 */

	public static void init(SharedPreferences settings) {
		// Create AmazonClientManager with SharedPreference
		clientManager = new AmazonClientManager(settings);
		ddb = clientManager.ddb();
		mapper = new DynamoDBMapper(ddb);
	}

	public static void createTable() throws NullPointerException {

		KeySchemaElement kse = new KeySchemaElement().withAttributeName(
				"id").withKeyType(KeyType.HASH);
		AttributeDefinition ad = new AttributeDefinition().withAttributeName(
				"id").withAttributeType(ScalarAttributeType.N);
		ProvisionedThroughput pt = new ProvisionedThroughput()
				.withReadCapacityUnits(10l).withWriteCapacityUnits(5l);

		CreateTableRequest request = new CreateTableRequest()
				.withTableName(PropertyLoader.getInstance().getTestTableName())
				.withKeySchema(kse).withAttributeDefinitions(ad)
				.withProvisionedThroughput(pt);

		try {
			ddb.createTable(request);
		} catch (AmazonServiceException ex) {
			clientManager.wipeCredentialsOnAuthError(ex);
		}
	}

	/*
	 * Retrieves the table description and returns the table status as a string.
	 */
	public static String getTestTableStatus() throws NullPointerException {

		try {
			DescribeTableRequest request = new DescribeTableRequest()
					.withTableName(PropertyLoader.getInstance()
							.getTestTableName());
			DescribeTableResult result = ddb.describeTable(request);

			String status = result.getTable().getTableStatus();
			return status == null ? "" : status;

		} catch (ResourceNotFoundException e) {
		} catch (AmazonServiceException ex) {
			clientManager.wipeCredentialsOnAuthError(ex);
		}

		return "";
	}

	/*
	 * Inserts ten users with userNo from 1 to 10 and random names.
	 */
	public static void insertUsers() throws NullPointerException {
		try {

			Account account = new Account();
			account.setId(1);
			account.setEmail("nvquockhtn@gmail.com");
			account.setPassWord("123456");
			account.setCompanyDomain("nvquoc.zendesk.com");

			mapper.save(account);

			// -------------------------

			account.setId(2);
			account.setEmail("vanquang@gmail.com");
			account.setPassWord("123456");
			account.setCompanyDomain("vanquang.zendesk.com");

			mapper.save(account);

			// -----------------------------------

			account.setId(3);
			account.setEmail("thanhquang@gmail.com");
			account.setPassWord("123456");
			account.setCompanyDomain("thanhquang.zendesk.com");

			mapper.save(account);

		} catch (AmazonServiceException ex) {
			clientManager.wipeCredentialsOnAuthError(ex);
		}
	}

	/*
	 * Scans the table and returns the list of users.
	 */
	public static ArrayList<Account> getUserList() throws NullPointerException {

		DynamoDBScanExpression scanExpression = new DynamoDBScanExpression();
		try {
			PaginatedScanList<Account> result = mapper.scan(Account.class,
					scanExpression);

			ArrayList<Account> resultList = new ArrayList<Account>();
			for (Account up : result) {
				resultList.add(up);
			}

			return resultList;

		} catch (AmazonServiceException ex) {
			clientManager.wipeCredentialsOnAuthError(ex);
		}

		return null;
	}

	/*
	 * Retrieves all of the attribute/value pairs for the specified user.
	 */
	public static Account getUserPreference(int id) throws NullPointerException {

		try {
			Account account = mapper.load(Account.class, id);

			return account;

		} catch (AmazonServiceException ex) {
			clientManager.wipeCredentialsOnAuthError(ex);
		}

		return null;
	}

	/*
	 * Updates one attribute/value pair for the specified user.
	 */
	public static void updateUserPreference(Account account) {

		try {
			mapper.save(account);

		} catch (AmazonServiceException ex) {
			clientManager.wipeCredentialsOnAuthError(ex);
		}
	}

	/*
	 * Deletes the specified user and all of its attribute/value pairs.
	 */
	public static void deleteUser(Account account) {

		try {
			mapper.delete(account);

		} catch (AmazonServiceException ex) {
			clientManager.wipeCredentialsOnAuthError(ex);
		}
	}

	/*
	 * Deletes the test table and all of its users and their attribute/value
	 * pairs.
	 */
	public static void cleanUp() {

		DeleteTableRequest request = new DeleteTableRequest()
				.withTableName(PropertyLoader.getInstance().getTestTableName());
		try {
			ddb.deleteTable(request);

		} catch (AmazonServiceException ex) {
			clientManager.wipeCredentialsOnAuthError(ex);
		}
	}

}
