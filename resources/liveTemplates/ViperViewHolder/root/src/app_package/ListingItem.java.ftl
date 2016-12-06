package ${viperPackage}.view.adapter.agregate;


public class ${prefix}ListingItem implements ListingItem {

    private Object mObject;

    public ${prefix}ListingItem(Object object) {
        mObject = object;
    }

    @Override
    public int getType() {
		//return ListingItem.TYPE_${prefix?upper_case};
		return 0;
    }

    public Object get${prefix}() {
        return mObject;
    }
}

