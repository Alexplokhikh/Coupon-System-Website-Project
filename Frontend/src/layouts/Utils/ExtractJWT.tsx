import jwtDecode from "jwt-decode";
import {TokenDecodedModel} from "../../models/TokenDecodedModel";

export const ExtractJWT = (token: string, extraction: string) => {

    const decodedToken = jwtDecode<TokenDecodedModel>((token));
    const decodedTokenJson = JSON.stringify(decodedToken)

    const entries: string[] = decodedTokenJson.split(",");
    let map = new Map<string, string>();

    for (let i = 0; i < entries.length; i++) {
        let keyValue: string[] = entries[i].split(":");
        if (keyValue[0] === ("\""+extraction+"\"")) {
        }
        let remove: number = 1;
        let sub: number = 0;
        if (keyValue[1].endsWith("}")) {
            remove = 2;
        }
        if (keyValue[1].startsWith("{")) {
            sub = 1;
        }
        keyValue[1] = keyValue[1].substring(sub, keyValue[1].length - remove);
        keyValue[1] = keyValue[1].substring(1);

        map.set(keyValue[0], keyValue[1]);
    }
    if (map.has("\""+extraction+"\"")) {
        return map.get("\""+extraction+"\"")
    }
    return null
}
