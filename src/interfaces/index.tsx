import React from "react";

export interface PropsLabel
	extends React.DetailedHTMLProps<
		React.LabelHTMLAttributes<HTMLLabelElement>,
		HTMLLabelElement
	> {
	children: string | JSX.Element | JSX.Element[];
}

export interface PropsInput
	extends React.DetailedHTMLProps<
		React.InputHTMLAttributes<HTMLInputElement>,
		HTMLInputElement
	> {
	name: string
}

export interface PropsCheckbox
	extends React.DetailedHTMLProps<
		React.InputHTMLAttributes<HTMLInputElement>,
		HTMLInputElement
	> {
	handler: React.ChangeEventHandler<HTMLInputElement>
}
