package ${viperPackage}.contract;

import com.hannesdorfmann.mosby.mvp.MvpView;
import com.mateuszkoslacz.moviper.iface.presenter.ViperPresenter;
import com.mateuszkoslacz.moviper.iface.interactor.ViperInteractor;
import com.mateuszkoslacz.moviper.iface.presenter.routing.ViperPresenterForRouting;
import com.mateuszkoslacz.moviper.iface.routing.ViperRouting;
import com.mateuszkoslacz.moviper.iface.presenter.interactor.ViperPresenterForInteractor;

public interface ${prefix}Contract {

    interface Presenter extends ViperPresenter<View> {

    }

    interface View extends MvpView {
        <#if viewState>interface State {  
            void setState(int state);
        }</#if>  
    }

    interface Interactor extends ViperInteractor<PresenterForInteractor> {

    }

    interface PresenterForInteractor extends ViperPresenterForInteractor<Interactor> {

    }

    interface Routing extends ViperRouting<PresenterForRouting> {

    }

    interface PresenterForRouting extends ViperPresenterForRouting<Routing> {

    }
}
