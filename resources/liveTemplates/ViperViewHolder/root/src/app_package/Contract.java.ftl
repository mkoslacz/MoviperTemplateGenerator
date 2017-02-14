package <#if !packagesPerUseCase>${viperPackage}.contract<#else>${viewHolderCompontentsPackage}</#if>;

import android.app.Activity;
<#if !vhType?contains("Passive")>import com.mateuszkoslacz.moviper.iface.presenter.ViperPresenter;
</#if>import com.mateuszkoslacz.moviper.iface.view.MvpDataView;
import com.mateuszkoslacz.moviper.iface.interactor.ViperRxInteractor;
import com.mateuszkoslacz.moviper.iface.routing.ViperRxRouting;
<#if createEntity>
import ${viperPackage}.entity.${prefix};
</#if>
<#if !packagesPerUseCase>public </#if>interface ${prefix}Contract {

    <#if !vhType?contains("Passive")>interface Presenter extends ViperPresenter<View> {

    }</#if>

    interface View extends MvpDataView<<#if createEntity>${prefix}<#else>Object/*TODO: Change to your own entity*/</#if>> {

    }

    interface Interactor extends ViperRxInteractor {

    }

    interface Routing extends ViperRxRouting<Activity> {

    }
}
