package ${viperPackage}.routing;

import android.support.annotation.NonNull;
import android.app.Activity;

import com.mateuszkoslacz.moviper.base.routing.ActivityBaseRouting;

import ${viperPackage}.contract.${prefix}Contract;

public class ${prefix}Routing
        extends ActivityBaseRouting<
        ${prefix}Contract.PresenterForRouting>
        implements ${prefix}Contract.Routing {

    public ${prefix}Routing(@NonNull Activity activity) {
        super(activity);
    }
}
