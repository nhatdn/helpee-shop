import React from "react";
import { ASSETS } from "../../constants";
import { Container } from "../container";
const Header: React.FC = (): JSX.Element => {
	return (
		<Container>
			<div className="flex justify-between items-center h-20 bg-bg.white mt-3">
				<img src={ASSETS.LOGO} className="w-200 object-cover" alt="" />
				<a className="text-primary font-semibold text-base" href="">Cần trợ giúp</a>
			</div>
		</Container>
	)
};

export {
	Header
}