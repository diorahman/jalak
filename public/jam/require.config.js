var jam = {
    "packages": [
        {
            "name": "raphael",
            "location": "jam/raphael",
            "main": "raphael.amd.js"
        },
        {
            "name": "eve",
            "location": "jam/eve",
            "main": "eve.js"
        }
    ],
    "version": "0.2.13",
    "shim": {}
};

if (typeof require !== "undefined" && require.config) {
    require.config({
    "packages": [
        {
            "name": "raphael",
            "location": "jam/raphael",
            "main": "raphael.amd.js"
        },
        {
            "name": "eve",
            "location": "jam/eve",
            "main": "eve.js"
        }
    ],
    "shim": {}
});
}
else {
    var require = {
    "packages": [
        {
            "name": "raphael",
            "location": "jam/raphael",
            "main": "raphael.amd.js"
        },
        {
            "name": "eve",
            "location": "jam/eve",
            "main": "eve.js"
        }
    ],
    "shim": {}
};
}

if (typeof exports !== "undefined" && typeof module !== "undefined") {
    module.exports = jam;
}