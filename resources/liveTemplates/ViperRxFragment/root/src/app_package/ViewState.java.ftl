package ${viperPackage}.view.viewstate;

import android.os.Bundle;
import android.support.annotation.NonNull;

import com.hannesdorfmann.mosby.mvp.viewstate.RestorableViewState;
import ${viperPackage}.contract.${prefix}Contract;

public class ${prefix}ViewState
		implements RestorableViewState<${prefix}Contract.View>, ${prefix}Contract.View.State {

    public static final int STATE_LOADING = 0;
    public static final int STATE_CONTENT = 1;
    public static final int STATE_ERROR = 2;

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
                case STATE_LOADING:

                    return;
                case STATE_CONTENT:

                    return;
                case STATE_ERROR:

                    return;
            }
        }
    }

    @Override
    public void setState(int state) {
        mState = state;
    }
}
