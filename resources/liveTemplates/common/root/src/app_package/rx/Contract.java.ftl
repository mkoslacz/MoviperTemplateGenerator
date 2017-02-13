package ${viperPackage}.<#if packagesPerUseCase>${classToResource(className)}<#else>contract</#if>;

import android.app.Activity;
import com.hannesdorfmann.mosby.mvp.MvpView;
import com.mateuszkoslacz.moviper.iface.presenter.ViperPresenter;
import com.mateuszkoslacz.moviper.iface.interactor.ViperRxInteractor;
import com.mateuszkoslacz.moviper.iface.routing.ViperRxRouting;

<#if !packagesPerUseCase>public </#if>interface ${prefix}Contract {

    interface Presenter extends ViperPresenter<View> {

    }

    interface View extends MvpView {
        <#if viewState>interface State {  
            void setState(int state);
        }</#if>  
    }

    interface Interactor extends ViperRxInteractor {

    }

    interface Routing extends ViperRxRouting<Activity> {

    }
}
