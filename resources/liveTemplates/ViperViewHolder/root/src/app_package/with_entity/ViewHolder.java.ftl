package <#if !packagesPerUseCase>${viperPackage}.view.viewholder<#else>${viewHolderCompontentsPackage}</#if>;

import android.support.annotation.NonNull;
import android.view.View;

import com.mateuszkoslacz.moviper.base.view.viewholder.<#if vhType != "ViperViewHolder">autoinject.<#if vhType?contains("Passive")>passive.</#if></#if>${vhType};<#if vhType?contains("Passive")>
import com.mateuszkoslacz.moviper.iface.presenter.ViperPresenter;</#if><#if vhType?contains("DataBinding")>
import ${appPackage}.databinding.Viewholder${prefix}Binding;</#if>
<#if !packagesPerUseCase>import ${viperPackage}.contract.${prefix}Contract;
import ${viperPackage}.presenter.${prefix}Presenter;</#if>
import ${viperPackage}.entity.${prefix};

public class ${prefix}ViewHolder
        extends ${vhType}<${prefix}, ${prefix}Contract.View<#if !vhType?contains("Passive")>, ${prefix}Contract.Presenter</#if><#if vhType?contains("DataBinding")>, Viewholder${prefix}Binding</#if>>
        implements ${prefix}Contract.View<#if createViewHelper>, ${prefix}Contract.ViewHelper</#if> {

	public ${prefix}ViewHolder(View itemView) {
		    super(itemView);
	}

    @Override
    @NonNull
    public <#if vhType?contains("Passive")>ViperPresenter<${prefix}Contract.View><#else>${prefix}Contract.Presenter</#if> createPresenter() {
        return new ${prefix}Presenter();
    }

    <#if vhType == "ViperAiViewHolder" || vhType == "ViperAiPassiveViewHolder">@Override
    protected void injectViews(View itemView) {
        
    }</#if>
}

