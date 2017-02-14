<manifest xmlns:android="http://schemas.android.com/apk/res/android" >

    <application>
        <activity android:name=".viper.<#if packagesPerUseCase>${classToResource(className)}<#else>view.activity</#if>.${prefix}Activity"
            <#if generateActivityTitle!true>
                <#if isNewProject>
                    android:label="@string/app_name"
                </#if>
            </#if>>
            <#if isLauncher && !(isLibraryProject!false)>
                <intent-filter>
                    <action android:name="android.intent.action.MAIN" />
                    <category android:name="android.intent.category.LAUNCHER" />
                </intent-filter>
            </#if>
        </activity>
    </application>
</manifest>
