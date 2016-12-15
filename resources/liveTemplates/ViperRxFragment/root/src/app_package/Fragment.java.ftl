package ${viperPackage}.view.fragment;

import android.os.Bundle;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;

import com.hannesdorfmann.mosby.mvp.<#if viewState>viewstate.MvpViewStateFragment;<#else>MvpFragment</#if> 
<#if viewState>import com.hannesdorfmann.mosby.mvp.viewstate.ViewState;</#if> 
import ${appPackage}.R;
import ${viperPackage}.contract.${prefix}Contract;
import ${viperPackage}.presenter.${prefix}Presenter;
<#if viewState>import ${viperPackage}.view.viewstate.${prefix}ViewState;</#if> 

public class ${prefix}Fragment
        extends Mvp<#if viewState>ViewState</#if>Fragment<${prefix}Contract.View, ${prefix}Contract.Presenter> 
        implements ${prefix}Contract.View<#if createViewHelper>, ${prefix}Contract.ViewHelper</#if> {

    @Nullable
    @Override
    public View onCreateView(LayoutInflater inflater, @Nullable ViewGroup container, @Nullable Bundle savedInstanceState) {
        return inflater.inflate(R.layout.fragment_${classToResource(className)}, container, false);
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
