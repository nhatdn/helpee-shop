import React from "react";
import { PropsLabel } from "../../interfaces";

const Label = ({ children, ...res }: PropsLabel): JSX.Element => {
	return (
		<label className="cursor-pointer font-medium text-base" {...res}>{children}</label>
	)
}

export {
	Label
};