import React from "react";
import { PropsCheckbox } from "../../interfaces";

const Checkbox = ({ handler, ...res }: PropsCheckbox) => {
    return (
        <input {...res} onChange={handler} type="checkbox" />
    )
}

export {
    Checkbox
}