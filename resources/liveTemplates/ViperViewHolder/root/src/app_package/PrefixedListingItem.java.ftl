package ${viperPackage}.view.adapter.agregate;

public class ${prefix}ListingItem implements ListingItem {

	public static int TYPE = ${prefix}ListingItem.class.hashCode();

    private Object mObject;

    public ${prefix}ListingItem(Object object) {
        mObject = object;
    }

    @Override
    public int getType() {
		return TYPE;
    }

    public Object get${prefix}() {
        return mObject;
    }
}

