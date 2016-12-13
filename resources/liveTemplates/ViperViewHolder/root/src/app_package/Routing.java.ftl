package ${viperPackage}.routing;

import android.app.Activity;
import android.support.annotation.NonNull;
import android.view.View;

import com.mateuszkoslacz.moviper.base.routing.ViewHolderBaseRxRouting;
import ${viperPackage}.contract.${prefix}Contract;

public class ${prefix}Routing
        extends ViewHolderBaseRxRouting
        implements ${prefix}Contract.Routing {

    public ${prefix}Routing(@NonNull View view) {
        super((Activity) view.getContext());
    }
}

