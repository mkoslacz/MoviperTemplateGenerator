package ${viperPackage}.routing;

import android.support.annotation.NonNull;
import android.app.Activity;

import com.mateuszkoslacz.moviper.base.routing.ActivityBaseViewHelperRxRouting;

import ${viperPackage}.contract.${prefix}Contract;

public class ${prefix}Routing
        extends ActivityBaseViewHelperRxRouting<
        ${prefix}Contract.ViewHelper>
        implements ${prefix}Contract.Routing {

    public ${prefix}Routing(@NonNull Activity activity) {
        super(activity);
    }
}
