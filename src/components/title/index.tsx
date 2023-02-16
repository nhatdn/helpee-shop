import React from "react";

const Title: React.FC<{ children: string | JSX.Element | JSX.Element[] }> = ({ children }): JSX.Element => {
	return (
		<h3 className="text-white text-lg h-12 flex items-center px-4 bg-primary uppercase font-bold">{children}</h3>
	)
}

export {
	Title
}