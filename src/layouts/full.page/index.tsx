import React from "react";

const FullPage: React.FC<{ children: React.ReactNode }> = ({ children }): JSX.Element => (
	<div className="flex-1">
		{children}
	</div>
)

export {
	FullPage
};