package ${viperPackage}.routing;

import android.support.annotation.NonNull;
import android.app.Activity;

import com.mateuszkoslacz.moviper.base.routing.ActivityBaseRxRouting;

import ${viperPackage}.contract.${prefix}Contract;

public class ${prefix}Routing
        extends ActivityBaseRxRouting
        implements ${prefix}Contract.Routing {

    public ${prefix}Routing(@NonNull Activity activity) {
        super(activity);
    }
}
