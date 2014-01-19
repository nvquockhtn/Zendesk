package info.androidhive.actionbar;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.ImageButton;

public class IndexActivity extends Activity {
	private ImageButton btnSigin;
	private ImageButton btnRegister;
	public IndexActivity() {
		
	}
	@Override
	protected void onCreate(Bundle savedInstanceState) {
		
		super.onCreate(savedInstanceState);
		setContentView(R.layout.index);
		btnSigin = (ImageButton) findViewById(R.id.btn_sigin);
		btnRegister = (ImageButton) findViewById(R.id.btn_segister);
		btnSigin.setOnClickListener(new OnClickListener() {
			@Override
			public void onClick(View v) {
				Intent mainActivity = new Intent(IndexActivity.this, MainActivity.class);
				startActivity(mainActivity);
			}
		});
		btnRegister.setOnClickListener(new OnClickListener() {
			@Override
			public void onClick(View v) {
				Intent registerActivity = new Intent(IndexActivity.this, RegisterActivity.class);
				startActivity(registerActivity);
			}
		});
	}
}
