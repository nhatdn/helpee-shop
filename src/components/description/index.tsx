import React from "react";

const Description: React.FC<{ title: string | JSX.Element | undefined, content: string | JSX.Element | undefined }> = ({ title, content }): JSX.Element => {
	return (
		<div className="my-4">
			{title && (<h4 className="text-xl text-primary font-bold">{title}</h4>)}
			{content && (<p className="text-justify text-base text-primary opacity-80">{content}</p>)}
		</div>
	)
}

export {
	Description
}