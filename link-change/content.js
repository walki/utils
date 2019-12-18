const config = {
    "find": "www.udemy.com",
    "replace": "hyland.udemy.com"
}

let links = Array.from(document.getElementsByTagName('a'));

console.log("find: " + config.find)
console.log("replace: " + config.replace)


links.filter(l => l.href.indexOf(config.find) > -1)
    .map(l => {
        console.log(l.href);
        l.href = l.href.replace(config.find, config.replace)
        console.log(l.href);
    });