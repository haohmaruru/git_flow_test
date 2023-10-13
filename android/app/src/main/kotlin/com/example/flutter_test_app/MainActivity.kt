package com.example.flutter_test_app

import android.graphics.drawable.Drawable
import android.os.Build
import android.os.Bundle
import android.util.Log
import androidx.annotation.RequiresApi
import io.flutter.embedding.android.DrawableSplashScreen
import io.flutter.embedding.android.FlutterActivity
import io.flutter.embedding.android.SplashScreen


class MainActivity: FlutterActivity() {

    override fun onDestroy() {
        Log.e("testLife","Có vào onDestroy đây nè")
        super.onDestroy()
    }
}
