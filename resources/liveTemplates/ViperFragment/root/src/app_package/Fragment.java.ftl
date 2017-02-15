package ${viperPackage}.<#if packagesPerUseCase>${classToResource(className)}<#else>view.fragment</#if>;

import android.os.Bundle;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
<#if viewState>
import com.hannesdorfmann.mosby.mvp.viewstate.ViewState;</#if>
import ${appPackage}.R;<#if type?contains("DataBinding")>
import ${appPackage}.databinding.Fragment${prefix}Binding;</#if><#if !packagesPerUseCase>
import ${viperPackage}.contract.${prefix}Contract;
import ${viperPackage}.presenter.${prefix}Presenter;
<#if viewState>import ${viperPackage}.view.viewstate.${prefix}ViewState;</#if></#if>
import com.mateuszkoslacz.moviper.base.view.fragment.<#if type != "">autoinject.</#if><#if passiveMode>passive.</#if><#if type?contains("DataBinding")>databinding.</#if><#if type?contains("ButterKnife")>butterknife.</#if>Viper${type}<#if viewState>ViewState</#if><#if passiveMode>Passive</#if>Fragment;<#if passiveMode>
import com.mateuszkoslacz.moviper.iface.presenter.ViperPresenter;</#if>

public class ${prefix}Fragment
        extends Viper${type}<#if viewState>ViewState</#if><#if passiveMode>Passive</#if>Fragment
        <${prefix}Contract.View<#if !passiveMode>, 
        ${prefix}Contract.Presenter</#if><#if viewState>,
        ${prefix}ViewState</#if><#if type?contains("DataBinding")>, 
        Fragment${prefix}Binding</#if>>
        implements ${prefix}Contract.View<#if createViewHelper>, ${prefix}Contract.ViewHelper</#if> {

    @Nullable
    @Override
    public View onCreateView(LayoutInflater inflater, @Nullable ViewGroup container, @Nullable Bundle savedInstanceState) {
        return inflater.inflate(R.layout.fragment_${classToResource(className)}, container, false);
    }

    @NonNull
    @Override
    public <#if passiveMode>ViperPresenter<${prefix}Contract.View><#else>${prefix}Contract.Presenter</#if> createPresenter() {
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
    <#if type == "Ai" || type == "AiPassive">@Override
    protected void injectViews(View itemView) {
        
    }</#if>  
	<#if type == "Ai" || type == "AiPassive">@Override
    protected void injectViews(View itemView) {
        
    }</#if>
    <#if type != "">@Override
    protected int getLayoutId() {
        return R.layout.fragment_${classToResource(className)};
    }</#if>
}
