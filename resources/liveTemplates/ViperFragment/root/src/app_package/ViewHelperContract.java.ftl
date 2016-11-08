package ${viperPackage}.contract;

import com.hannesdorfmann.mosby.mvp.MvpPresenter;
import com.hannesdorfmann.mosby.mvp.MvpView;
import com.mateuszkoslacz.moviper.iface.interactor.MoviperInteractor;
import com.mateuszkoslacz.moviper.iface.presenter.interactor.MoviperPresenterForInteractor;
import com.mateuszkoslacz.moviper.iface.presenter.routing.MoviperFragmentPresenterForRouting;
import com.mateuszkoslacz.moviper.iface.routing.MoviperViewHelperRouting;
import com.mateuszkoslacz.moviper.iface.viewhelper.MoviperViewHelper;

public interface ${prefix}Contract {

    interface Presenter extends MvpPresenter<View> {

    }

    interface View extends MvpView {

    }

    interface Interactor extends MoviperInteractor<PresenterForInteractor> {

    }

    interface PresenterForInteractor extends MoviperPresenterForInteractor<Interactor> {

    }

    interface Routing extends MoviperViewHelperRouting<PresenterForRouting, ViewHelper> {

    }

    interface PresenterForRouting extends MoviperFragmentPresenterForRouting<Routing> {

    }

    interface ViewHelper extends MoviperViewHelper {

    }

}
