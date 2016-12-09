package ${viperPackage}.view.adapter.delegate;

import android.support.annotation.NonNull;
import android.support.v7.widget.RecyclerView;
import android.view.LayoutInflater;
import android.view.ViewGroup;

import com.hannesdorfmann.adapterdelegates3.AdapterDelegate;
import com.mateuszkoslacz.moviper.recyclerviewsample.R;

import ${viperPackage}.view.adapter.agregate.ListingItem;
import ${viperPackage}.view.adapter.agregate.${prefix}ListingItem;
import ${viperPackage}.view.viewholder.${prefix}ViewHolder;

import java.util.List;

public class ${prefix}AdapterDelegate extends AdapterDelegate<List<ListingItem>> {

    @Override
    protected boolean isForViewType(@NonNull List<ListingItem> items, int position) {
		return items.get(position).getType() == ${prefix}ListingItem.TYPE;
    }

    @NonNull
    @Override
    protected RecyclerView.ViewHolder onCreateViewHolder(ViewGroup parent) {
        return new ${prefix}ViewHolder(LayoutInflater
                .from(parent.getContext()).inflate(R.layout.vh_${prefix?lower_case}, parent, false));
    }

    @Override
    protected void onBindViewHolder(@NonNull List<ListingItem> items, int position,
                                    @NonNull RecyclerView.ViewHolder holder,
                                    @NonNull List<Object> payloads) {
        ${prefix}ViewHolder viewHolder = (${prefix}ViewHolder) holder;
        viewHolder.setDataObject(((${prefix}ListingItem) items.get(position)).get${prefix}());
        viewHolder.bindPresenter();
    }
}

