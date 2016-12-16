package ${viperPackage}.contract;

import com.hannesdorfmann.mosby.mvp.MvpPresenter;
import com.mateuszkoslacz.moviper.iface.view.MvpViewHolder;
import com.mateuszkoslacz.moviper.iface.viewhelper.MoviperViewHelper;
import com.mateuszkoslacz.moviper.iface.interactor.MoviperRxInteractor;
import com.mateuszkoslacz.moviper.iface.routing.MoviperViewHelperRxRouting;
<#if createEntity>
import ${viperPackage}.entity.${prefix};
</#if>
public interface ${prefix}Contract {

    interface Presenter extends MvpPresenter<View> {

    }

    interface View extends MvpViewHolder<<#if createEntity>${prefix}<#else>Object</#if>> {

    }

    interface Interactor extends MoviperRxInteractor {

    }

    interface Routing extends MoviperViewHelperRxRouting<ViewHelper> {

    }

    interface ViewHelper extends MoviperViewHelper {

    }

}

