<#if applicationPackage??>
package ${viperPackage}.contract;
</#if>

import com.hannesdorfmann.mosby.mvp.MvpPresenter;
import com.hannesdorfmann.mosby.mvp.MvpView;
import com.mateuszkoslacz.moviper.iface.interactor.MoviperInteractor;
import com.mateuszkoslacz.moviper.iface.presenter.interactor.MoviperPresenterForInteractor;
import com.mateuszkoslacz.moviper.iface.presenter.routing.MoviperActivityPresenterForRouting;
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

    interface PresenterForRouting extends MoviperActivityPresenterForRouting<Routing> {

    }

    interface ViewHelper extends MoviperViewHelper {

    }

}
