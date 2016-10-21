package ${packageName};

import android.os.Bundle;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;

<#if applicationPackage??>
import ${applicationPackage}.R;
import ${viperPackage}.contract.${prefix}Contract;
import ${viperPackage}.presenter.${prefix}Presenter;
</#if>
import com.hannesdorfmann.mosby.mvp.MvpFragment;

public class ${prefix}Fragment
        extends MvpFragment<${prefix}Contract.View, ${prefix}Contract.Presenter>
        implements ${prefix}Contract.View<#if createViewHelper>, ${prefix}Contract.ViewHelper</#if> {

    @Nullable
    @Override
    public View onCreateView(LayoutInflater inflater, @Nullable ViewGroup container, @Nullable Bundle savedInstanceState) {
        return inflater.inflate(R.layout.fragment_${classToResource(className)}, container, false);
    }

    @NonNull
    @Override
    public ${prefix}Contract.Presenter createPresenter() {
        return new ${prefix}Presenter(this);
    }
}
