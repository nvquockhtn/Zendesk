package info.androidhive.actionbar;

import java.util.ArrayList;

import com.amazonaws.tvmclient.AmazonClientManager;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.AsyncTask;
import android.os.Bundle;
import android.util.Log;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Button;
import android.widget.EditText;
import android.widget.Toast;
import info.androidhive.actionbar.DynamoDBManager.Account;
import info.androidhive.actionbar.DynamoDBManager.UserPreference;


public class LoginActivity extends Activity {
	private static final String TAG = "UserPreferenceDemoActivity";
	public static AmazonClientManager clientManager = null;
	private EditText edt_email;
	private EditText edt_password;
	private EditText edt_domain;
	private Button btn_Login;
	private Button btn_Createtable;
	private ArrayList<UserPreference> items = null;
	private ArrayList<Account> itemsAccount = null;

	public LoginActivity() {
		// TODO Auto-generated constructor stub
	}

	@Override
	protected void onCreate(Bundle savedInstanceState) {

		super.onCreate(savedInstanceState);
		setContentView(R.layout.activity_login);

		clientManager = new AmazonClientManager(getSharedPreferences(
				"info.androidhive.actionbar.AWSDemo", Context.MODE_PRIVATE));
		PropertyLoader.getInstance().getTokenVendingMachineURL();
		layDanhSachAccount();

		edt_email = (EditText) findViewById(R.id.edt_email_login);
		edt_password = (EditText) findViewById(R.id.edt_password_login);
		edt_domain = (EditText) findViewById(R.id.edt_yourdomain_login);
		btn_Login = (Button) findViewById(R.id.button1);
		// btn_Createtable = (Button) findViewById(R.id.button2);
		btn_Login.setOnClickListener(new OnClickListener() {
			@Override
			public void onClick(View v) {
				/*
				 * new DynamoDBManagerTask()
				 * .execute(DynamoDBManagerType.LIST_USERS);
				 */
				String email = edt_email.getText().toString();
				String password = edt_password.getText().toString();
				String domain = edt_domain.getText().toString();
				if (email != null && password != null && domain != null) {
					if (email.equals("") == false
							&& password.equals("") == false
							&& domain.equals("") == false) {
						Account account = new Account();
						account.setEmail(email);
						account.setCompanyDomain(domain);
						account.setPassWord(password);
						boolean checkLogin = checkLoginWithAccount(account);
						if (checkLogin == true) {
							Intent mainActivity = new Intent(
									LoginActivity.this, MainActivity.class);
							startActivity(mainActivity);
						} else {
							Toast.makeText(
									getApplicationContext(),
									"Incorrectly!!! \n Please check these information",
									Toast.LENGTH_LONG).show();
						}
					}
				}

			}

		});
		/*
		 * btn_Createtable.setOnClickListener(new OnClickListener() {
		 * 
		 * @Override public void onClick(View v) { new DynamoDBManagerTask()
		 * .execute(DynamoDBManagerType.CREATE_TABLE); } });
		 */

	}

	/**
	 * Kiem tra xem account nay co ton tai khong
	 * 
	 * @param account
	 */
	private boolean checkLoginWithAccount(Account account) {
		for (int i = 0; i < itemsAccount.size(); i++) {
			String itemEmail = itemsAccount.get(i).getEmail();
			String itemPassword = itemsAccount.get(i).getPassWord();
			String itemDomain = itemsAccount.get(i).getCompanyDomain();
			Log.i("checking item", itemEmail + "---" + itemPassword + "---"
					+ itemDomain);
			Log.i("checking account",
					account.getEmail() + "---" + account.getPassWord() + "---"
							+ account.getCompanyDomain());
			if (account.getEmail().equals(itemEmail)
					&& account.getPassWord().equals(itemPassword)
					&& account.getCompanyDomain().equals(itemDomain)) {
				return true;
			}
		}
		return false;

	}

	/**
	 * lay danh sach account co san tren dynamoDB cua amazon
	 */
	public void layDanhSachAccount() {
		Thread a = new Thread() {
			@Override
			public void run() {
				// items = DynamoDBManager.getUserList();
				itemsAccount = DynamoDBManager.getAccountList();
				for (int i = 0; i < itemsAccount.size(); i++) {
					Log.i("item", i + itemsAccount.get(i).getEmail() + "---"
							+ itemsAccount.get(i).getPassWord());
				}
			}
		};
		a.start();
	}

	/*
	private class DynamoDBManagerTask extends
			AsyncTask<DynamoDBManagerType, Void, DynamoDBManagerTaskResult> {

		protected DynamoDBManagerTaskResult doInBackground(
				DynamoDBManagerType... types) {

			String tableStatus = DynamoDBManager.getTestTableStatus();

			DynamoDBManagerTaskResult result = new DynamoDBManagerTaskResult();
			result.setTableStatus(tableStatus);
			result.setTaskType(types[0]);

			if (types[0] == DynamoDBManagerType.CREATE_TABLE) {
				if (tableStatus.length() == 0) {
					DynamoDBManager.createTable();
				}
			} else if (types[0] == DynamoDBManagerType.INSERT_USER) {
				if (tableStatus.equalsIgnoreCase("ACTIVE")) {
					DynamoDBManager.insertUsers();
				}
			} else if (types[0] == DynamoDBManagerType.LIST_USERS) {
				if (tableStatus.equalsIgnoreCase("ACTIVE")) {
					DynamoDBManager.getUserList();
				}
			} else if (types[0] == DynamoDBManagerType.CLEAN_UP) {
				if (tableStatus.equalsIgnoreCase("ACTIVE")) {
					DynamoDBManager.cleanUp();
				}
			}

			return result;
		}

		protected void onPostExecute(DynamoDBManagerTaskResult result) {

			if (result.getTaskType() == DynamoDBManagerType.CREATE_TABLE) {

				if (result.getTableStatus().length() != 0) {
					Toast.makeText(
							LoginActivity.this,
							"The test table already exists.\nTable Status: "
									+ result.getTableStatus(),
							Toast.LENGTH_LONG).show();
				}

			} else if (result.getTaskType() == DynamoDBManagerType.LIST_USERS
					&& result.getTableStatus().equalsIgnoreCase("ACTIVE")) {

				startActivity(new Intent(LoginActivity.this,
						LoginActivity.class));

			} else if (!result.getTableStatus().equalsIgnoreCase("ACTIVE")) {

				Toast.makeText(
						LoginActivity.this,
						"The test table is not ready yet.\nTable Status: "
								+ result.getTableStatus(), Toast.LENGTH_LONG)
						.show();
			}
		}
	}

	private enum DynamoDBManagerType {
		GET_TABLE_STATUS, CREATE_TABLE, INSERT_USER, LIST_USERS, CLEAN_UP
	}

	private class DynamoDBManagerTaskResult {
		private DynamoDBManagerType taskType;
		private String tableStatus;

		public DynamoDBManagerType getTaskType() {
			return taskType;
		}

		public void setTaskType(DynamoDBManagerType taskType) {
			this.taskType = taskType;
		}

		public String getTableStatus() {
			return tableStatus;
		}

		public void setTableStatus(String tableStatus) {
			this.tableStatus = tableStatus;
		}
	}
*/
}
