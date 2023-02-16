import React from "react";

const Button: React.FC<{className: string | undefined, handler: React.MouseEventHandler<HTMLButtonElement>, children: string | JSX.Element }> = ({className, handler, children }): JSX.Element => {
	return (
		<button className={ className || "w-full bg-primary rounded-md py-2 my-4 uppercase text-white font-semibold hover:bg-hover.primary"} onClick={handler}>{children}</button>
	)
}

export {
	Button
}