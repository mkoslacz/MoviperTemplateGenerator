package ${viperPackage}.<#if packagesPerUseCase>${classToResource(className)}<#else>view.activity</#if>;

import android.os.Bundle;
import android.support.annotation.NonNull;
<#if viewState>
import com.hannesdorfmann.mosby.mvp.viewstate.ViewState;</#if>
import ${appPackage}.R;
<#if !packagesPerUseCase>import ${viperPackage}.contract.${prefix}Contract;
import ${viperPackage}.presenter.${prefix}Presenter;
<#if viewState>import ${viperPackage}.view.viewstate.${prefix}ViewState;
</#if></#if>import com.mateuszkoslacz.moviper.base.view.activity.Viper<#if viewState>ViewState</#if>Activity;

public class ${prefix}Activity
        extends Viper<#if viewState>ViewState</#if>Activity
        <${prefix}Contract.View, 
                ${prefix}Contract.Presenter<#if viewState>,
                ${prefix}ViewState</#if>>
        implements ${prefix}Contract.View<#if createViewHelper>, ${prefix}Contract.ViewHelper</#if> {

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_${classToResource(className)});
    }

    @NonNull
    @Override
    public ${prefix}Contract.Presenter createPresenter() {
        return new ${prefix}Presenter();
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
