package ${viperPackage}.presenter;

import android.support.annotation.NonNull;
import android.support.v4.app.Fragment;

import com.mateuszkoslacz.moviper.base.presenter.ViperFragmentBaseRxPresenter;

import ${viperPackage}.contract.${prefix}Contract;
import ${viperPackage}.routing.${prefix}Routing;
import ${viperPackage}.interactor.${prefix}Interactor;

public class ${prefix}Presenter
        extends ViperFragmentBaseRxPresenter
        <${prefix}Contract.View,
                ${prefix}Contract.Interactor,
                ${prefix}Contract.Routing>
        implements
        ${prefix}Contract.Presenter {

    public ${prefix}Presenter(Fragment fragment) {
        super(fragment);
    }

    @NonNull
    @Override
    public ${prefix}Contract.Routing createRouting(@NonNull Fragment fragment) {
        return new ${prefix}Routing(fragment);
    }

    @NonNull
    @Override
    public ${prefix}Contract.Interactor createInteractor() {
        return new ${prefix}Interactor();
    }
}
