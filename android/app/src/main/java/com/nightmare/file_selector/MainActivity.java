package com.nightmare.file_selector;

import android.os.Bundle;
import android.util.Log;

import com.nightmare.applib.AppChannel;

import io.flutter.embedding.android.FlutterActivity;

public class MainActivity extends FlutterActivity {
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        Log.d("NightmareTAG", "申请wakelock");
        new Thread(() -> {
            try {
                AppChannel.startServer(getApplicationContext());
            } catch (Exception e) {
                e.printStackTrace();
            }
        }).start();
    }
}
