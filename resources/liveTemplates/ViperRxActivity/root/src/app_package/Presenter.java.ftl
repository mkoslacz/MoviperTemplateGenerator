package ${viperPackage}.presenter;

import android.support.annotation.NonNull;
import android.app.Activity;

import com.mateuszkoslacz.moviper.base.presenter.ViperActivityBaseRxPresenter;

import ${viperPackage}.contract.${prefix}Contract;
import ${viperPackage}.routing.${prefix}Routing;
import ${viperPackage}.interactor.${prefix}Interactor;

public class ${prefix}Presenter
        extends ViperActivityBaseRxPresenter
        <${prefix}Contract.View,
                ${prefix}Contract.Interactor,
                ${prefix}Contract.Routing>
        implements
        ${prefix}Contract.Presenter {

    public ${prefix}Presenter(Activity activity) {
        super(activity);
    }

    @NonNull
    @Override
    public ${prefix}Contract.Routing createRouting(@NonNull Activity activity) {
        return new ${prefix}Routing(activity);
    }

    @NonNull
    @Override
    public ${prefix}Contract.Interactor createInteractor() {
        return new ${prefix}Interactor();
    }
}
