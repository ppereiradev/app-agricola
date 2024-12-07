import { Text } from "react-native"

export default function ProductListItem(props) {

    return <Text style={{fontSize: 30}} >{props.product.name}</Text>

}
