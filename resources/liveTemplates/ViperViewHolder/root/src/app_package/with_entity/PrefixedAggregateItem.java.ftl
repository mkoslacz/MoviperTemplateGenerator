package ${viperPackage}.view.adapter.agregate;

import ${viperPackage}.entity.${prefix};

public class ${prefix}${aggregateName}Item implements ${aggregateName}Item {

	public static int TYPE = ${prefix}${aggregateName}Item.class.hashCode();

    private ${prefix} m${prefix};

    public ${prefix}${aggregateName}Item(${prefix} ${prefix?lower_case}) {
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

