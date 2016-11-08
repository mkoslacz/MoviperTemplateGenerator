package ${viperPackage}.routing;

import android.support.annotation.NonNull;
import android.support.v4.app.Fragment;

import com.mateuszkoslacz.moviper.base.routing.FragmentBaseRxRouting;

import ${viperPackage}.contract.${prefix}Contract;

public class ${prefix}Routing
        extends FragmentBaseRxRouting
        implements ${prefix}Contract.Routing {

    public ${prefix}Routing(@NonNull Fragment fragment) {
        super(fragment);
    }
}
