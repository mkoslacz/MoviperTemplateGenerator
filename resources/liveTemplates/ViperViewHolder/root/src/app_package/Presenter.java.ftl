package ${viperPackage}.presenter;

import android.support.annotation.NonNull;
import android.view.View;

import com.mateuszkoslacz.moviper.base.presenter.ViperViewHolderBaseRxPresenter;
import ${viperPackage}.contract.${prefix}Contract;
import ${viperPackage}.routing.${prefix}Routing;
import ${viperPackage}.interactor.${prefix}Interactor;

public class ${prefix}Presenter
        extends ViperViewHolderBaseRxPresenter
        <${prefix}Contract.View,
                ${prefix}Contract.Interactor,
                ${prefix}Contract.Routing>
        implements
        ${prefix}Contract.Presenter {

    public ${prefix}Presenter(@NonNull View view) {
        super(view);
    }

    @NonNull
    @Override
    public ${prefix}Contract.Routing createRouting(@NonNull View view) {
        return new ${prefix}Routing(view);
    }

    @NonNull
    @Override
    public ${prefix}Contract.Interactor createInteractor() {
        return new ${prefix}Interactor();
    }
}

