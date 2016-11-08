package ${viperPackage}.view.activity;

import android.os.Bundle;
import android.support.annotation.NonNull;

import ${appPackage}.R;
import ${viperPackage}.contract.${prefix}Contract;
import ${viperPackage}.presenter.${prefix}Presenter;

import com.hannesdorfmann.mosby.mvp.MvpActivity;

public class ${prefix}Activity
        extends MvpActivity<${prefix}Contract.View, ${prefix}Contract.Presenter>
        implements ${prefix}Contract.View<#if createViewHelper>, ${prefix}Contract.ViewHelper</#if> {

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_${classToResource(className)});
    }

    @NonNull
    @Override
    public ${prefix}Contract.Presenter createPresenter() {
        return new ${prefix}Presenter(this);
    }
}
