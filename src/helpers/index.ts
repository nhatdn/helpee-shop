const getDataFromEventInput = (event: React.FormEvent<EventTarget>, callback: Function, debug: any = false) => {
    let target = event.target as HTMLInputElement;
    debug && console.log(target.value);
    callback(target.value);
}
export {
    getDataFromEventInput
}