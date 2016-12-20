package ${viperPackage}.contract;

import com.hannesdorfmann.mosby.mvp.MvpView;
import com.mateuszkoslacz.moviper.iface.interactor.ViperInteractor;
import com.mateuszkoslacz.moviper.iface.presenter.ViperPresenter;
import com.mateuszkoslacz.moviper.iface.presenter.interactor.ViperPresenterForInteractor;
import com.mateuszkoslacz.moviper.iface.presenter.routing.ViperPresenterForRouting;
import com.mateuszkoslacz.moviper.iface.routing.ViperViewHelperRouting;
import com.mateuszkoslacz.moviper.iface.viewhelper.ViperViewHelper;

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

    interface Routing extends ViperViewHelperRouting<PresenterForRouting, ViewHelper> {

    }

    interface PresenterForRouting extends ViperPresenterForRouting<Routing> {

    }

    interface ViewHelper extends ViperViewHelper {

    }
}
