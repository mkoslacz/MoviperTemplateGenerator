<#if applicationPackage??>
package ${viperPackage}.contract;
</#if>

import com.hannesdorfmann.mosby.mvp.MvpPresenter;
import com.hannesdorfmann.mosby.mvp.MvpView;
import com.mateuszkoslacz.moviper.iface.interactor.MoviperRxInteractor;
import com.mateuszkoslacz.moviper.iface.routing.MoviperRxRouting;

public interface ${prefix}Contract {

    interface Presenter extends MvpPresenter<View> {

    }

    interface View extends MvpView {

    }

    interface Interactor extends MoviperRxInteractor {

    }

    interface Routing extends MoviperRxRouting {

    }
}
