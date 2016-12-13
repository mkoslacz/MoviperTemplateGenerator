package ${viperPackage}.view.adapter.agregate;

import ${viperPackage}.entity.${prefix};

public class ${prefix}ListingItem implements ListingItem {

	public static int TYPE = ${prefix}ListingItem.class.hashCode();

    private ${prefix} m${prefix};

    public ${prefix}ListingItem(${prefix} ${prefix?lower_case}) {
        m${prefix} = ${prefix?lower_case};
    }

    @Override
    public int getType() {
		return TYPE;
    }

    public ${prefix} get${prefix}() {
        return m${prefix};
    }
}

