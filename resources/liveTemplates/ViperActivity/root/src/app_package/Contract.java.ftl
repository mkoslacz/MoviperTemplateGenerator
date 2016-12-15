package ${viperPackage}.contract;

import com.hannesdorfmann.mosby.mvp.MvpPresenter;
import com.hannesdorfmann.mosby.mvp.MvpView;
import com.mateuszkoslacz.moviper.iface.interactor.MoviperInteractor;
import com.mateuszkoslacz.moviper.iface.presenter.interactor.MoviperPresenterForInteractor;
import com.mateuszkoslacz.moviper.iface.presenter.routing.MoviperActivityPresenterForRouting;
import com.mateuszkoslacz.moviper.iface.routing.MoviperRouting;

public interface ${prefix}Contract {

    interface Presenter extends MvpPresenter<View> {

    }

    interface View extends MvpView {
        <#if viewState>interface State { 
                void setState(int state); 
        }</#if> 
    }

    interface Interactor extends MoviperInteractor<PresenterForInteractor> {

    }

    interface PresenterForInteractor extends MoviperPresenterForInteractor<Interactor> {

    }

    interface Routing extends MoviperRouting<PresenterForRouting> {

    }

    interface PresenterForRouting extends MoviperActivityPresenterForRouting<Routing> {

    }
}
