package <#if !packagesPerUseCase>${viperPackage}.view.adapter.agregate<#else>${aggregatesPackage}</#if>;

public interface ${aggregateName}Item {

    int getType();
}

