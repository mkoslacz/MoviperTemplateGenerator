package <#if !packagesPerUseCase>${viperPackage}.presenter<#else>${viewHolderCompontentsPackage}</#if>;

import android.support.annotation.NonNull;

import com.mateuszkoslacz.moviper.base.presenter.BaseRxPresenter;<#if vhType?contains("Passive")>
import com.mateuszkoslacz.moviper.iface.presenter.ViperPresenter;</#if>
<#if !packagesPerUseCase>import ${viperPackage}.contract.${prefix}Contract;
import ${viperPackage}.routing.${prefix}Routing;
import ${viperPackage}.interactor.${prefix}Interactor;</#if>

public class ${prefix}Presenter
        extends BaseRxPresenter
        <${prefix}Contract.View,
                ${prefix}Contract.Interactor,
                ${prefix}Contract.Routing>
        implements <#if vhType?contains("Passive")>ViperPresenter<${prefix}Contract.View><#else>${prefix}Contract.Presenter</#if> {

    @NonNull
    @Override
    public ${prefix}Contract.Routing createRouting() {
        return new ${prefix}Routing();
    }

    @NonNull
    @Override
    public ${prefix}Contract.Interactor createInteractor() {
        return new ${prefix}Interactor();
    }
}
