package ${viperPackage}.routing;

import android.app.Activity;
import android.support.annotation.NonNull;
import android.view.View;

import com.mateuszkoslacz.moviper.base.routing.ViewHolderBaseViewHelperRxRouting;
import ${viperPackage}.contract.${prefix}Contract;

public class ${prefix}Routing
        extends ViewHolderBaseViewHelperRxRouting<
        ${prefix}Contract.ViewHelper>
        implements ${prefix}Contract.Routing {

    public ${prefix}Routing(@NonNull View view) {
        super((Activity) view.getContext());
    }
}

