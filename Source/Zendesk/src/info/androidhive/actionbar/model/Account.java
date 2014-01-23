package info.androidhive.actionbar.model;

import com.amazonaws.services.dynamodbv2.datamodeling.DynamoDBAttribute;
import com.amazonaws.services.dynamodbv2.datamodeling.DynamoDBHashKey;
import com.amazonaws.services.dynamodbv2.datamodeling.DynamoDBTable;

@DynamoDBTable(tableName = "Account")
public class Account {
	private int id;
	private String email;
	private String passWord;
	private String companyDomain;
	
	@DynamoDBHashKey(attributeName = "id")
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	
	@DynamoDBAttribute(attributeName = "email")
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	
	@DynamoDBAttribute(attributeName = "passWord")
	public String getPassWord() {
		return passWord;
	}
	public void setPassWord(String passWord) {
		this.passWord = passWord;
	}
	
	@DynamoDBAttribute(attributeName = "companyDomain")
	public String getCompanyDomain() {
		return companyDomain;
	}
	public void setCompanyDomain(String companyDomain) {
		this.companyDomain = companyDomain;
	}
	
	
}
