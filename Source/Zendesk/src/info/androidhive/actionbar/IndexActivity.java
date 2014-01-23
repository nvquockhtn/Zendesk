package info.androidhive.actionbar;

import com.zendesk.bll.DynamoDBManager;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Button;
import android.widget.ImageButton;

public class IndexActivity extends Activity {
	private Button btnSigin;
	private Button btnRegister;

	public IndexActivity() {

	}

	@Override
	protected void onCreate(Bundle savedInstanceState) {

		super.onCreate(savedInstanceState);
		setContentView(R.layout.index);
		btnSigin = (Button) findViewById(R.id.btn_sigin);
		btnRegister = (Button) findViewById(R.id.btn_segister);
		btnSigin.setOnClickListener(new OnClickListener() {
			@Override
			public void onClick(View v) {
				Intent loginActivity = new Intent(IndexActivity.this,
						LoginActivity.class);
				startActivity(loginActivity);
			}
		});
		btnRegister.setOnClickListener(new OnClickListener() {
			@Override
			public void onClick(View v) {
				Intent registerActivity = new Intent(IndexActivity.this,
						RegisterActivity.class);
				startActivity(registerActivity);
			}
		});

		DynamoDBManager.init(getSharedPreferences("com.zendesk",
				Context.MODE_PRIVATE));
		DynamoDBManager.createTable();
		// DynamoDBManager.insertUsers();
	}
}
