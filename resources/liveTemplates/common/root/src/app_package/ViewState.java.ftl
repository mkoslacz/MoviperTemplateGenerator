package ${viperPackage}.view.viewstate; 
 
import android.os.Bundle; 
import android.support.annotation.NonNull; 
 
import com.hannesdorfmann.mosby.mvp.viewstate.RestorableViewState; 
import ${viperPackage}.contract.${prefix}Contract; 
 
public class ${prefix}ViewState 
    implements RestorableViewState<${prefix}Contract.View>, ${prefix}Contract.View.State { 
 
  private int mState; 
 
    @Override 
    public void saveInstanceState(@NonNull Bundle out) { 
 
    } 
 
    @Override 
    public RestorableViewState<${prefix}Contract.View> restoreInstanceState(Bundle in) { 
    if (in == null) return null; 
 
        return this; 
    } 
 
    @Override 
    public void apply(${prefix}Contract.View view, boolean retained) { 
        if (retained) { 
            switch (mState) { 

            } 
        } 
    } 
 
    @Override 
    public void setState(int state) { 
        mState = state; 
    } 
}
