const MiniCssExtractPlugin = require("mini-css-extract-plugin")


module.exports = {
    entry: {
        main: "./gtk-3.0/main.sass"
    },
    output: {
        path: __dirname + "/",
        filename: "temp/[name].js"
    },
    plugins: [
        new MiniCssExtractPlugin({
            filename: "./gtk-3.0/main.css"
        }),
    ],
    module: {
        rules: [
            {
                test: /main.sass/,
                use: [
                    { loader: MiniCssExtractPlugin.loader },
                    "css-loader",
                    "sass-loader"
                ]
            }
        ]
    }
}

