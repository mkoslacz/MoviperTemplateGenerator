package ${viperPackage}.routing;

import android.support.annotation.NonNull;
import android.support.v4.app.Fragment;

import com.mateuszkoslacz.moviper.base.routing.FragmentBaseViewHelperRouting;

import ${viperPackage}.contract.${prefix}Contract;

public class ${prefix}Routing
        extends FragmentBaseViewHelperRouting<
        ${prefix}Contract.PresenterForRouting,
        ${prefix}Contract.ViewHelper>
        implements ${prefix}Contract.Routing {

    public ${prefix}Routing(@NonNull Fragment fragment) {
        super(fragment);
    }
}
