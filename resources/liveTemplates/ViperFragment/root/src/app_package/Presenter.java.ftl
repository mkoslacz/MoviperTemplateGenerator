package ${viperPackage}.presenter;

import android.support.annotation.NonNull;
import android.support.v4.app.Fragment;

import com.mateuszkoslacz.moviper.base.presenter.ViperFragmentBasePresenter;

import ${viperPackage}.contract.${prefix}Contract;
import ${viperPackage}.routing.${prefix}Routing;
import ${viperPackage}.interactor.${prefix}Interactor;

public class ${prefix}Presenter
        extends ViperFragmentBasePresenter
        <${prefix}Contract.View,
                ${prefix}Contract.Interactor,
                ${prefix}Contract.Routing>
        implements
        ${prefix}Contract.Presenter,
        ${prefix}Contract.PresenterForInteractor,
        ${prefix}Contract.PresenterForRouting {

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
