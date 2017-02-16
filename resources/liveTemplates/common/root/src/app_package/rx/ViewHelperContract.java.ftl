package ${viperPackage}.<#if packagesPerUseCase>${classToResource(className)}<#else>contract</#if>;

import android.app.Activity;
import com.hannesdorfmann.mosby.mvp.MvpView;
<#if !passiveMode>import com.mateuszkoslacz.moviper.iface.presenter.ViperPresenter;
</#if>import com.mateuszkoslacz.moviper.iface.interactor.ViperRxInteractor;
import com.mateuszkoslacz.moviper.iface.routing.ViperViewHelperRxRouting;
import com.mateuszkoslacz.moviper.iface.viewhelper.ViperViewHelper;

<#if !packagesPerUseCase>public </#if>interface ${prefix}Contract {

    <#if !passiveMode>interface Presenter extends ViperPresenter<View> {

    }</#if>

    interface View extends MvpView {
        <#if viewState>interface State {  
            void setState(int state);
        }</#if>  
    }

    interface Interactor extends ViperRxInteractor {

    }

    interface Routing extends ViperViewHelperRxRouting<Activity, ViewHelper> {

    }

    interface ViewHelper extends ViperViewHelper {

    }
}

