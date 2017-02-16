package ${viperPackage}.<#if packagesPerUseCase>${classToResource(className)}<#else>contract</#if>;

import android.app.Activity;
import com.hannesdorfmann.mosby.mvp.MvpView;
<#if !passiveMode>import com.mateuszkoslacz.moviper.iface.presenter.ViperPresenter;
</#if>import com.mateuszkoslacz.moviper.iface.interactor.ViperInteractor;
import com.mateuszkoslacz.moviper.iface.presenter.routing.ViperPresenterForRouting;
import com.mateuszkoslacz.moviper.iface.routing.ViperRouting;
import com.mateuszkoslacz.moviper.iface.presenter.interactor.ViperPresenterForInteractor;

<#if !packagesPerUseCase>public </#if>interface ${prefix}Contract {

    <#if !passiveMode>interface Presenter extends ViperPresenter<View> {

    }</#if>

    interface View extends MvpView {
        <#if viewState>interface State {  
            void setState(int state);
        }</#if>  
    }

    interface Interactor extends ViperInteractor<PresenterForInteractor> {

    }

    interface PresenterForInteractor extends ViperPresenterForInteractor<Interactor> {

    }

    interface Routing extends ViperRouting<Activity, PresenterForRouting> {

    }

    interface PresenterForRouting extends ViperPresenterForRouting<Routing> {

    }
}
