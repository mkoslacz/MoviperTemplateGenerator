package ${viperPackage}.contract;

import com.mateuszkoslacz.moviper.iface.presenter.ViperPresenter;
import com.mateuszkoslacz.moviper.iface.view.MvpDataView;
import com.mateuszkoslacz.moviper.iface.interactor.ViperRxInteractor;
import com.mateuszkoslacz.moviper.iface.routing.ViperRxRouting;
<#if createEntity>
import ${viperPackage}.entity.${prefix};
</#if>
public interface ${prefix}Contract {

    interface Presenter extends ViperPresenter<View> {

    }

    interface View extends MvpDataView<<#if createEntity>${prefix}<#else>Object/*TODO: Change to your own entity*/</#if>> {

    }

    interface Interactor extends ViperRxInteractor {

    }

    interface Routing extends ViperRxRouting {

    }
}
