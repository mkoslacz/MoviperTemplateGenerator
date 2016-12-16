package ${viperPackage}.view.viewholder;

import android.view.View;

import com.mateuszkoslacz.moviper.base.view.ViperViewHolder;
import ${viperPackage}.contract.${prefix}Contract;
import ${viperPackage}.presenter.${prefix}Presenter;
import ${viperPackage}.entity.${prefix};

public class ${prefix}ViewHolder
        extends ViperViewHolder<${prefix}, ${prefix}Contract.View, ${prefix}Contract.Presenter>
        implements ${prefix}Contract.View {

	public ${prefix}ViewHolder(View itemView) {
		    super(itemView);
	}

    @Override
    public ${prefix}Contract.Presenter createPresenter() {
        return new ${prefix}Presenter();
    }
}

