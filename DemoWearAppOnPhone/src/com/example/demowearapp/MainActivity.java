package com.example.demowearapp;

import android.app.Activity;
import android.content.pm.ApplicationInfo;
import android.os.Bundle;
import android.widget.TextView;

public class MainActivity extends Activity {

	private TextView message;

	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		setContentView(R.layout.activity_main);

		message = (TextView) findViewById(R.id.message);
		
		boolean isDebuggable = (0 != (getApplicationInfo().flags & ApplicationInfo.FLAG_DEBUGGABLE));
		if (isDebuggable) {
			message.setText(R.string.debug_key_msg);
		} else {
			message.setText(R.string.release_key_msg);
		}
	}
}
