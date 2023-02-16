import React from "react";

const Container: React.FC<{ children: string | JSX.Element | JSX.Element[] }> = ({ children }): JSX.Element => {
	return (
		<div className="w-10/12 m-auto">
			{children}
		</div>
	)
}

export {
	Container
}