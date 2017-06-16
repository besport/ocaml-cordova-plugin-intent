# ocaml-cordova-plugin-intent
Binding in OCaml to cordova-plugin-intent using js_of_ocaml.  
  
# to add in your config.xml file:
    <plugin name="cordova-plugin-intent" />
    <platform name="android">
      <config-file target="AndroidManifest.xml" parent="./application/activity/[@android:name='MainActivity']"
                   xmlns:android="http://schemas.android.com/apk/res/android">
        <intent-filter>
          <action android:name="android.intent.action.SEND"/>
          <category android:name="android.intent.category.DEFAULT"/>
          <data android:mimeType="text/plain"/>
        </intent-filter>
        <intent-filter>
          <action android:name="android.intent.action.SEND" />
          <action android:name="android.intent.action.SEND_MULTIPLE" />
          <category android:name="android.intent.category.DEFAULT" />
          <data android:mimeType="image/*" />
          <data android:mimeType="video/*" />
        </intent-filter>
      </config-file>
    </platform>
