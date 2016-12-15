package ${viperPackage}.view.adapter.agregate;

public class ${aggregateName}Item implements DisplayableItem {

	public static int TYPE = ${aggregateName}Item.class.hashCode();

    private Object mObject;

    public ${aggregateName}Item(Object object) {
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

