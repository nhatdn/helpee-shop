import React from "react";
import { Input } from "../";
import { Search as SearchIcon } from "react-feather";
import { PropsInput } from "../../interfaces";
const Search = ({name = "search", ...res}: PropsInput): JSX.Element => {
    return (
        <div className="relative mx-1">
             <Input {...res} name={name} id="search" type="search" placeholder="Search..." className="my-2 w-64 pr-4 leading-9 h-9 px-3 py-1 rounded-2xl border-2 border-primary">
            </Input>
            <span className="absolute bottom-3.5 right-2 bg-white cursor-pointer"><SearchIcon size={24} className="hover:text-primary font-semibold"/></span>
        </div>
    )
}
export {
    Search
};