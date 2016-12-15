package ${viperPackage}.view.activity;

import android.os.Bundle;
import android.support.annotation.NonNull;

import com.hannesdorfmann.mosby.mvp.<#if viewState>viewstate.MvpViewStateActivity;<#else>MvpActivity</#if>
<#if viewState>import com.hannesdorfmann.mosby.mvp.viewstate.ViewState;</#if>
import ${appPackage}.R;
import ${viperPackage}.contract.${prefix}Contract;
import ${viperPackage}.presenter.${prefix}Presenter;
<#if viewState>import ${viperPackage}.view.viewstate.${prefix}ViewState;</#if>

public class ${prefix}Activity
        extends Mvp<#if viewState>ViewState</#if>Activity<${prefix}Contract.View, ${prefix}Contract.Presenter>
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

	<#if viewState>
	@NonNull
    @Override
    public ViewState<${prefix}Contract.View> createViewState() {
        return new ${prefix}ViewState();
    }

    @Override
    public void onNewViewStateInstance() {
        
    }</#if>
}
