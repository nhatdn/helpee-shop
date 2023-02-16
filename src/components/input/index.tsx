import React from "react";
import { PropsInput } from "../../interfaces";
const Input = ({ name, ...res }: PropsInput): JSX.Element => {
	return (
		<input style={{outline: 'none'}} className="border-gray-100 border-2 px-3 py-2 rounded-xl my-2" {...res} name={name}></input>
	)
}

export {
	Input
}