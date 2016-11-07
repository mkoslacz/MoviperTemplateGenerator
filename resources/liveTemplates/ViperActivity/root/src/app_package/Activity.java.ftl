package ${packageName};

import android.os.Bundle;
import android.support.annotation.NonNull;

<#if applicationPackage??>
import ${applicationPackage}.R;
import ${viperPackage}.contract.${prefix}Contract;
import ${viperPackage}.presenter.${prefix}Presenter;
</#if>
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
