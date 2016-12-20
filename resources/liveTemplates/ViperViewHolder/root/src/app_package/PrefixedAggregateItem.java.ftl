package ${viperPackage}.view.adapter.agregate;

public class ${prefix}${aggregateName}Item implements ${aggregateName}Item {

	public static int TYPE = ${prefix}${aggregateName}Item.class.hashCode();

    //TODO: Change to your own entity
    private Object mObject;

    public ${prefix}${aggregateName}Item(Object object) {
        mObject = object;
    }

    @Override
    public int getType() {
		return TYPE;
    }

    public Object getObject() {
        return mObject;
    }
}
