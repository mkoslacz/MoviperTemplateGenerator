package ${viperPackage}.view.adapter.delegate;

import android.support.annotation.NonNull;
import android.support.v7.widget.RecyclerView;
import android.view.LayoutInflater;
import android.view.ViewGroup;

import com.hannesdorfmann.adapterdelegates3.AdapterDelegate;
import com.mateuszkoslacz.moviper.recyclerviewsample.R;

import ${viperPackage}.view.adapter.agregate.DisplayableItem;
import ${viperPackage}.view.adapter.agregate.${aggregateName}Item;
import ${viperPackage}.view.viewholder.${prefix}ViewHolder;

import java.util.List;

public class ${prefix}AdapterDelegate extends AdapterDelegate<List<DisplayableItem>> {

    @Override
    protected boolean isForViewType(@NonNull List<DisplayableItem> items, int position) {
		return items.get(position).getType() == ${aggregateName}Item.TYPE;
    }

    @NonNull
    @Override
    protected RecyclerView.ViewHolder onCreateViewHolder(ViewGroup parent) {
        return new ${prefix}ViewHolder(LayoutInflater
                .from(parent.getContext()).inflate(R.layout.viewholder_${prefix?lower_case}, parent, false));
    }

    @Override
    protected void onBindViewHolder(@NonNull List<DisplayableItem> items, int position,
                                    @NonNull RecyclerView.ViewHolder holder,
                                    @NonNull List<Object> payloads) {
        ${prefix}ViewHolder viewHolder = (${prefix}ViewHolder) holder;
        viewHolder.setDataObject(((${aggregateName}Item) items.get(position)).get<#if createEntity>${prefix}()<#else>Object()</#if>);
        viewHolder.bindPresenter();
    }
}

