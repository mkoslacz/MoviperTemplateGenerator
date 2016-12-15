package ${viperPackage}.view.adapter.agregate;

import ${viperPackage}.entity.${prefix};

public class ${aggregateName}Item implements DisplayableItem {

	public static int TYPE = ${aggregateName}Item.class.hashCode();

    private ${prefix} m${prefix};

    public ${aggregateName}Item(${prefix} ${prefix?lower_case}) {
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

