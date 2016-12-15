package ${viperPackage}.contract;

import com.hannesdorfmann.mosby.mvp.MvpPresenter;
import com.mateuszkoslacz.moviper.iface.interactor.MoviperRxInteractor;
import com.mateuszkoslacz.moviper.iface.routing.MoviperRxRouting;
import com.mateuszkoslacz.moviper.iface.view.MvpViewHolder;
import ${viperPackage}.entity.${prefix};

public interface ${prefix}Contract {

    interface Presenter extends MvpPresenter<View> {

    }

    interface View extends MvpViewHolder<${prefix}> {

    }

    interface Interactor extends MoviperRxInteractor {

    }

    interface Routing extends MoviperRxRouting {

    }
}

